package ssm.hmily_blog.service;

import ssm.hmily_blog.pojo.Dict;

import java.util.List;

public interface DictService {
    List<Dict> findByTypeCode(String type_code);
}
