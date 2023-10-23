package com.zjh.sms.service.User;

import com.zjh.sms.dto.User;
import com.zjh.sms.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 学生账号接口

 **/
public interface StudentService {
  /**
  * description: 新增学生账号

  */
  void addStudent(User user);

  /**
   * description: 删除学生账号

   */
  void delete(List<String> ids);

  /**
   * description: 修改学生账号

   */
  void update(User user);

  /**
   * description: 获取学生账号信息列表

   */
  PagingResult<User> getStudentList(RowBounds rowBounds, Map<String, Object> condition);
}
