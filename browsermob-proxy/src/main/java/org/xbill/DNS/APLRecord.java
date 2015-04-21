// Copyright (c) 2004 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

import org.xbill.DNS.utils.base16;

import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * APL - Address Prefix List. See RFC 3123.
 * 
 * @author Brian Wellington
 */

/*
 * Note: this currently uses the same constants as the Address class; this could
 * change if more constants are defined for APL records.
 */

public class APLRecord extends Record {

	/**
	 * The Class Element.
	 */
	public static class Element {

		/** The family. */
		public final int family;

		/** The negative. */
		public final boolean negative;

		/** The prefix length. */
		public final int prefixLength;

		/** The address. */
		public final Object address;

		/**
		 * Instantiates a new element.
		 * 
		 * @param family
		 *            the family
		 * @param negative
		 *            the negative
		 * @param address
		 *            the address
		 * @param prefixLength
		 *            the prefix length
		 */
		private Element(int family, boolean negative, Object address,
				int prefixLength) {
			this.family = family;
			this.negative = negative;
			this.address = address;
			this.prefixLength = prefixLength;
			if (!validatePrefixLength(family, prefixLength)) {
				throw new IllegalArgumentException("invalid prefix " + "length");
			}
		}

		/**
		 * Creates an APL element corresponding to an IPv4 or IPv6 prefix.
		 * 
		 * @param negative
		 *            Indicates if this prefix is a negation.
		 * @param address
		 *            The IPv4 or IPv6 address.
		 * @param prefixLength
		 *            The length of this prefix, in bits.
		 */
		public Element(boolean negative, InetAddress address, int prefixLength) {
			this(Address.familyOf(address), negative, address, prefixLength);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#toString()
		 */
		public String toString() {
			StringBuffer sb = new StringBuffer();
			if (negative)
				sb.append("!");
			sb.append(family);
			sb.append(":");
			if (family == Address.IPv4 || family == Address.IPv6)
				sb.append(((InetAddress) address).getHostAddress());
			else
				sb.append(base16.toString((byte[]) address));
			sb.append("/");
			sb.append(prefixLength);
			return sb.toString();
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#equals(java.lang.Object)
		 */
		public boolean equals(Object arg) {
			if (arg == null || !(arg instanceof Element))
				return false;
			Element elt = (Element) arg;
			return (family == elt.family && negative == elt.negative
					&& prefixLength == elt.prefixLength && address
						.equals(elt.address));
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Object#hashCode()
		 */
		public int hashCode() {
			return address.hashCode() + prefixLength + (negative ? 1 : 0);
		}
	}

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -1348173791712935864L;

	/** The elements. */
	private List elements;

	/**
	 * Instantiates a new aPL record.
	 */
	APLRecord() {
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#getObject()
	 */
	Record getObject() {
		return new APLRecord();
	}

	/**
	 * Validate prefix length.
	 * 
	 * @param family
	 *            the family
	 * @param prefixLength
	 *            the prefix length
	 * @return true, if successful
	 */
	private static boolean validatePrefixLength(int family, int prefixLength) {
		if (prefixLength < 0 || prefixLength >= 256)
			return false;
		if ((family == Address.IPv4 && prefixLength > 32)
				|| (family == Address.IPv6 && prefixLength > 128))
			return false;
		return true;
	}

	/**
	 * Creates an APL Record from the given data.
	 * 
	 * @param name
	 *            the name
	 * @param dclass
	 *            the dclass
	 * @param ttl
	 *            the ttl
	 * @param elements
	 *            The list of APL elements.
	 */
	public APLRecord(Name name, int dclass, long ttl, List elements) {
		super(name, Type.APL, dclass, ttl);
		this.elements = new ArrayList(elements.size());
		for (Iterator it = elements.iterator(); it.hasNext();) {
			Object o = it.next();
			if (!(o instanceof Element)) {
				throw new IllegalArgumentException("illegal element");
			}
			Element element = (Element) o;
			if (element.family != Address.IPv4
					&& element.family != Address.IPv6) {
				throw new IllegalArgumentException("unknown family");
			}
			this.elements.add(element);

		}
	}

	/**
	 * Parses the address.
	 * 
	 * @param in
	 *            the in
	 * @param length
	 *            the length
	 * @return the byte[]
	 * @throws WireParseException
	 *             the wire parse exception
	 */
	private static byte[] parseAddress(byte[] in, int length)
			throws WireParseException {
		if (in.length > length)
			throw new WireParseException("invalid address length");
		if (in.length == length)
			return in;
		byte[] out = new byte[length];
		System.arraycopy(in, 0, out, 0, in.length);
		return out;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrFromWire(org.xbill.DNS.DNSInput)
	 */
	void rrFromWire(DNSInput in) throws IOException {
		elements = new ArrayList(1);
		while (in.remaining() != 0) {
			int family = in.readU16();
			int prefix = in.readU8();
			int length = in.readU8();
			boolean negative = (length & 0x80) != 0;
			length &= ~0x80;

			byte[] data = in.readByteArray(length);
			Element element;
			if (!validatePrefixLength(family, prefix)) {
				throw new WireParseException("invalid prefix length");
			}

			if (family == Address.IPv4 || family == Address.IPv6) {
				data = parseAddress(data, Address.addressLength(family));
				InetAddress addr = InetAddress.getByAddress(data);
				element = new Element(negative, addr, prefix);
			} else {
				element = new Element(family, negative, data, prefix);
			}
			elements.add(element);

		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rdataFromString(org.xbill.DNS.Tokenizer,
	 * org.xbill.DNS.Name)
	 */
	void rdataFromString(Tokenizer st, Name origin) throws IOException {
		elements = new ArrayList(1);
		while (true) {
			Tokenizer.Token t = st.get();
			if (!t.isString())
				break;

			boolean negative = false;
			int family = 0;
			int prefix = 0;

			String s = t.value;
			int start = 0;
			if (s.startsWith("!")) {
				negative = true;
				start = 1;
			}
			int colon = s.indexOf(':', start);
			if (colon < 0)
				throw st.exception("invalid address prefix element");
			int slash = s.indexOf('/', colon);
			if (slash < 0)
				throw st.exception("invalid address prefix element");

			String familyString = s.substring(start, colon);
			String addressString = s.substring(colon + 1, slash);
			String prefixString = s.substring(slash + 1);

			try {
				family = Integer.parseInt(familyString);
			} catch (NumberFormatException e) {
				throw st.exception("invalid family");
			}
			if (family != Address.IPv4 && family != Address.IPv6)
				throw st.exception("unknown family");

			try {
				prefix = Integer.parseInt(prefixString);
			} catch (NumberFormatException e) {
				throw st.exception("invalid prefix length");
			}

			if (!validatePrefixLength(family, prefix)) {
				throw st.exception("invalid prefix length");
			}

			byte[] bytes = Address.toByteArray(addressString, family);
			if (bytes == null)
				throw st.exception("invalid IP address " + addressString);

			InetAddress address = InetAddress.getByAddress(bytes);
			elements.add(new Element(negative, address, prefix));
		}
		st.unget();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToString()
	 */
	String rrToString() {
		StringBuffer sb = new StringBuffer();
		for (Iterator it = elements.iterator(); it.hasNext();) {
			Element element = (Element) it.next();
			sb.append(element);
			if (it.hasNext())
				sb.append(" ");
		}
		return sb.toString();
	}

	/**
	 * Returns the list of APL elements.
	 * 
	 * @return the elements
	 */
	public List getElements() {
		return elements;
	}

	/**
	 * Address length.
	 * 
	 * @param addr
	 *            the addr
	 * @return the int
	 */
	private static int addressLength(byte[] addr) {
		for (int i = addr.length - 1; i >= 0; i--) {
			if (addr[i] != 0)
				return i + 1;
		}
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.xbill.DNS.Record#rrToWire(org.xbill.DNS.DNSOutput,
	 * org.xbill.DNS.Compression, boolean)
	 */
	void rrToWire(DNSOutput out, Compression c, boolean canonical) {
		for (Iterator it = elements.iterator(); it.hasNext();) {
			Element element = (Element) it.next();
			int length = 0;
			byte[] data;
			if (element.family == Address.IPv4
					|| element.family == Address.IPv6) {
				InetAddress addr = (InetAddress) element.address;
				data = addr.getAddress();
				length = addressLength(data);
			} else {
				data = (byte[]) element.address;
				length = data.length;
			}
			int wlength = length;
			if (element.negative) {
				wlength |= 0x80;
			}
			out.writeU16(element.family);
			out.writeU8(element.prefixLength);
			out.writeU8(wlength);
			out.writeByteArray(data, 0, length);
		}
	}

}
