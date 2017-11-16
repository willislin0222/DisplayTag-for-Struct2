package com.codeFactory;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class getData extends ActionSupport implements ServletRequestAware{

	HttpServletRequest request;
	
	public String execute()
	{
		List<emp> empList = new ArrayList<emp>();
		empList.add(new emp("parth", "parth@p.co","123"));
		empList.add(new emp("patel", "patel@p.co","123"));
		empList.add(new emp("emp1", "emp1@p.co","123"));
		empList.add(new emp("emp2", "emp2@p.co","123"));
		empList.add(new emp("emp3", "emp3@p.co","123"));
		request.setAttribute("empList", empList);
		System.out.println("request set");
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
	public HttpServletRequest getServletRequest()
	{
		return request;
	}
}
