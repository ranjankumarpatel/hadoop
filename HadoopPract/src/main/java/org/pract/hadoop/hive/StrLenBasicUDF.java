package org.pract.hadoop.hive;

import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;

public class StrLenBasicUDF extends UDF {

	public IntWritable evaluate(Text text) {
		return new IntWritable(text.toString().length());
	}

}
