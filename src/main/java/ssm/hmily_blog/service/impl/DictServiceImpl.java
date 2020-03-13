package ssm.hmily_blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.hmily_blog.mapper.DictMapper;
import ssm.hmily_blog.pojo.Dict;
import ssm.hmily_blog.service.DictService;

import java.util.List;
@Service
public class DictServiceImpl implements DictService {

    @Autowired
    private DictMapper dictMapper;
    public List<Dict> findByTypeCode(String type_code) {
        return dictMapper.findByTypeCode(type_code);
    }
}
