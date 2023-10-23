package com.zjh.sms.dao.User;

import com.zjh.sms.dto.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Map;


@Mapper
public interface UserMapper {

  User getStudentInfo(@Param("condition") Map<String, Object> condition);

  User getTeacherInfo(@Param("condition") Map<String, Object> condition);

  User getAdminInfo(@Param("condition") Map<String, Object> condition);

  void update(@Param("condition") Map<String, Object> condition);

  Integer checkPasswordCount(@Param("condition") Map<String, Object> condition);

  Integer getSilent();

  void setSilent(@Param("state") Integer state);
}
