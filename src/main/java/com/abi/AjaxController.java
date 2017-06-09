package com.abi;

import com.abi.dao.HelloWorldDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/hello/add")
public class AjaxController {

	@RequestMapping(method = RequestMethod.POST)
	public @ResponseBody Hello add(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return new HelloWorldDAO().getHelloObject(request.getParameter("name"), request.getParameter("ip"));
	}
}