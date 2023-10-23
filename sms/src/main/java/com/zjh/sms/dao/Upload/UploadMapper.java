package com.zjh.sms.dao.Upload;

import com.zjh.sms.domain.Upload;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Map;


@Mapper
public interface UploadMapper {

  void add(Upload upload);

  String getHead(@Param("condition") Map<String, Object> condition);

  Integer checkCount(@Param("condition") Map<String, Object> condition);

  void update(Upload upload);
}
