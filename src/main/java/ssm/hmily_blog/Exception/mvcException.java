package ssm.hmily_blog.Exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class mvcException implements HandlerExceptionResolver {

    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        ModelAndView mav = new ModelAndView();

        if (e instanceof myException) {
            //预期异常
            myException me = (myException) e;
            mav.addObject("error", me.getMsg());
        } else {
            //未知异常
            mav.addObject("error", "未知异常");

        }
        mav.setViewName("error");
        return mav;
    }
}

