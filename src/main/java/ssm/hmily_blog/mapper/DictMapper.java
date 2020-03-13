package ssm.hmily_blog.mapper;

import ssm.hmily_blog.pojo.Dict;

import java.util.List;

public interface DictMapper {
    List<Dict> findByTypeCode(String type_code);
}
