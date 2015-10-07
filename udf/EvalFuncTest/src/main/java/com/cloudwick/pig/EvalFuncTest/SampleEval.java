package com.cloudwick.pig.EvalFuncTest;

import java.io.IOException;

import org.apache.pig.EvalFunc;
import org.apache.pig.data.Tuple;

public class SampleEval extends EvalFunc<String>{

	@Override
	public String exec(Tuple tuple) throws IOException {
		// TODO Auto-generated method stub
		//return null;
		String lowerCase = (String)tuple.get(0);
		return lowerCase.toUpperCase();
		
	}
	 

}
