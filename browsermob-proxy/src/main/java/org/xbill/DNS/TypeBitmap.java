// Copyright (c) 2004-2009 Brian Wellington (bwelling@xbill.org)

package org.xbill.DNS;

/**
 * Routines for deal with the lists of types found in NSEC/NSEC3 records.
 *
 * @author Brian Wellington
 */

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.TreeSet;

// TODO: Auto-generated Javadoc
/**
 * The Class TypeBitmap.
 */
final class TypeBitmap implements Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -125354057735389003L;

	/** The types. */
	private TreeSet types;

	/**
	 * Instantiates a new type bitmap.
	 */
	private TypeBitmap() {
		types = new TreeSet();
	}

	/**
	 * Instantiates a new type bitmap.
	 * 
	 * @param array
	 *            the array
	 */
	public TypeBitmap(int[] array) {
		this();
		for (int i = 0; i < array.length; i++) {
			Type.check(array[i]);
			types.add(new Integer(array[i]));
		}
	}

	/**
	 * Instantiates a new type bitmap.
	 * 
	 * @param in
	 *            the in
	 * @throws WireParseException
	 *             the wire parse exception
	 */
	public TypeBitmap(DNSInput in) throws WireParseException {
		this();
		int lastbase = -1;
		while (in.remaining() > 0) {
			if (in.remaining() < 2)
				throw new WireParseException("invalid bitmap descriptor");
			int mapbase = in.readU8();
			if (mapbase < lastbase)
				throw new WireParseException("invalid ordering");
			int maplength = in.readU8();
			if (maplength > in.remaining())
				throw new WireParseException("invalid bitmap");
			for (int i = 0; i < maplength; i++) {
				int current = in.readU8();
				if (current == 0)
					continue;
				for (int j = 0; j < 8; j++) {
					if ((current & (1 << (7 - j))) == 0)
						continue;
					int typecode = mapbase * 256 + +i * 8 + j;
					types.add(Mnemonic.toInteger(typecode));
				}
			}
		}
	}

	/**
	 * Instantiates a new type bitmap.
	 * 
	 * @param st
	 *            the st
	 * @throws IOException
	 *             Signals that an I/O exception has occurred.
	 */
	public TypeBitmap(Tokenizer st) throws IOException {
		this();
		while (true) {
			Tokenizer.Token t = st.get();
			if (!t.isString())
				break;
			int typecode = Type.value(t.value);
			if (typecode < 0) {
				throw st.exception("Invalid type: " + t.value);
			}
			types.add(Mnemonic.toInteger(typecode));
		}
		st.unget();
	}

	/**
	 * To array.
	 * 
	 * @return the int[]
	 */
	public int[] toArray() {
		int[] array = new int[types.size()];
		int n = 0;
		for (Iterator it = types.iterator(); it.hasNext();)
			array[n++] = ((Integer) it.next()).intValue();
		return array;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		StringBuffer sb = new StringBuffer();
		for (Iterator it = types.iterator(); it.hasNext();) {
			int t = ((Integer) it.next()).intValue();
			sb.append(Type.string(t));
			sb.append(' ');
		}
		return sb.substring(0, sb.length() - 1);
	}

	/**
	 * Map to wire.
	 * 
	 * @param out
	 *            the out
	 * @param map
	 *            the map
	 * @param mapbase
	 *            the mapbase
	 */
	private static void mapToWire(DNSOutput out, TreeSet map, int mapbase) {
		int arraymax = (((Integer) map.last()).intValue()) & 0xFF;
		int arraylength = (arraymax / 8) + 1;
		int[] array = new int[arraylength];
		out.writeU8(mapbase);
		out.writeU8(arraylength);
		for (Iterator it = map.iterator(); it.hasNext();) {
			int typecode = ((Integer) it.next()).intValue();
			array[(typecode & 0xFF) / 8] |= (1 << (7 - typecode % 8));
		}
		for (int j = 0; j < arraylength; j++)
			out.writeU8(array[j]);
	}

	/**
	 * To wire.
	 * 
	 * @param out
	 *            the out
	 */
	public void toWire(DNSOutput out) {
		if (types.size() == 0)
			return;

		int mapbase = -1;
		TreeSet map = new TreeSet();

		for (Iterator it = types.iterator(); it.hasNext();) {
			int t = ((Integer) it.next()).intValue();
			int base = t >> 8;
			if (base == mapbase)
				map.add(new Integer(t));
			else {
				if (map.size() > 0)
					mapToWire(out, map, mapbase);
				map.clear();
				mapbase = base;
			}
		}
		mapToWire(out, map, mapbase);
	}

	/**
	 * Empty.
	 * 
	 * @return true, if successful
	 */
	public boolean empty() {
		return types.isEmpty();
	}

	/**
	 * Contains.
	 * 
	 * @param typecode
	 *            the typecode
	 * @return true, if successful
	 */
	public boolean contains(int typecode) {
		return types.contains(Mnemonic.toInteger(typecode));
	}

}
