/*
 * 
 */
package org.browsermob.core.json;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.ScalarSerializerBase;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class ISO8601DateFormatter.
 */
public class ISO8601DateFormatter extends ScalarSerializerBase<Date> {

	/** The Constant instance. */
	public final static ISO8601DateFormatter instance = new ISO8601DateFormatter();

	/**
	 * Instantiates a new checks if is o8601 date formatter.
	 */
	public ISO8601DateFormatter() {
		super(java.util.Date.class);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.codehaus.jackson.map.ser.SerializerBase#serialize(java.lang.Object,
	 * org.codehaus.jackson.JsonGenerator,
	 * org.codehaus.jackson.map.SerializerProvider)
	 */
	@Override
	public void serialize(java.util.Date value, JsonGenerator jgen,
			SerializerProvider provider) throws IOException,
			JsonGenerationException {
		DateFormat df = (DateFormat) provider.getConfig().getDateFormat()
				.clone();
		jgen.writeString(df.format(value));
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.codehaus.jackson.map.ser.SerializerBase#getSchema(org.codehaus.jackson
	 * .map.SerializerProvider, java.lang.reflect.Type)
	 */
	@Override
	public JsonNode getSchema(SerializerProvider provider, Type typeHint)
			throws JsonMappingException {
		return createSchemaNode("string", true);
	}

}
