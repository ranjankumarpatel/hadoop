package org.pract.hadoop.hive;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.hadoop.hive.ql.exec.UDFArgumentException;
import org.apache.hadoop.hive.ql.metadata.HiveException;
import org.apache.hadoop.hive.ql.udf.generic.GenericUDF;
import org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector;
import org.apache.hadoop.hive.serde2.objectinspector.primitive.PrimitiveObjectInspectorFactory;
import org.apache.hadoop.hive.serde2.objectinspector.primitive.StringObjectInspector;

public class StrLenUdf extends GenericUDF {

	StringObjectInspector strInspect;

	@Override
	public Object evaluate(DeferredObject[] arg0) throws HiveException {
		final String str = strInspect.getPrimitiveJavaObject(arg0[0]);
		return new Integer(str.length());
	}

	@Override
	public String getDisplayString(String[] arg0) {
		// TODO Auto-generated method stub
		return "StringToLength";
	}

	@Override
	public ObjectInspector initialize(ObjectInspector[] arg0) throws UDFArgumentException {
		if (ArrayUtils.isEmpty(arg0)) {
			throw new UDFArgumentException("Parameter missing");
		}

		final ObjectInspector a = arg0[0];

		if (a.getCategory() == ObjectInspector.Category.PRIMITIVE) {
			throw new UDFArgumentException("argument must be a string");
		}

		if (!(a instanceof StringObjectInspector)) {
			throw new UDFArgumentException("argument must be a string");
		}

		strInspect = (StringObjectInspector) a;

		return PrimitiveObjectInspectorFactory.javaIntObjectInspector;
	}

}
