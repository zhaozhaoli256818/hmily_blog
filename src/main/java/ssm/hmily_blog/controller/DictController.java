package ssm.hmily_blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ssm.hmily_blog.pojo.Dict;
import ssm.hmily_blog.service.DictService;

import java.util.List;

@Controller
public class DictController {
    @Autowired
    private DictService dictService;

    @RequestMapping("/dict")
    public @ResponseBody List<Dict> findByTypeCode(String type_code){
        List<Dict> list = dictService.findByTypeCode(type_code);
        return list;
    }
}
