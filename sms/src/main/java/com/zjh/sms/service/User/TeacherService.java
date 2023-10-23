package com.zjh.sms.service.User;

import com.zjh.sms.dto.User;
import com.zjh.sms.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 教师用户接口

 **/
public interface TeacherService {
  /**
   * description: 新增教师账号

   */
  void addTeacher(User user);

  /**
   * description: 删除教师账号

   */
  void delete(List<Integer> ids);

  /**
   * description: 修改教师账号

   */
  void update(User user);

  /**
   * description: 获取教师账号信息列表

   */
  PagingResult<User> getTeacherList(RowBounds rowBounds, Map<String, Object> condition);
}
