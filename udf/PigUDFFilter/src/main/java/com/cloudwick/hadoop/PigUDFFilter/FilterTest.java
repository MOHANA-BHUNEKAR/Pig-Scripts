package com.cloudwick.hadoop.PigUDFFilter;

import java.io.IOException;

import org.apache.pig.FilterFunc;
import org.apache.pig.data.Tuple;

public class FilterTest extends FilterFunc {

	@Override
	public Boolean exec(Tuple tuple) throws IOException {
		// TODO Auto-generated method stub

		int id = Integer.parseInt(tuple.get(0).toString()); 
		if (id == 1001)
			return true;
		else
			return false;
		// return null;
	}

}
