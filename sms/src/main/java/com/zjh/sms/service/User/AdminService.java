package com.zjh.sms.service.User;

import com.zjh.sms.dto.User;
import com.zjh.sms.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;

/**
 * Description 管理员Service层

 **/
public interface AdminService {
  /**
   * description: 新增学生账号

   */
  void add(User user);

  /**
   * description: 删除学生账号

   */
  void delete(List<Integer> ids);

  /**
   * description: 修改学生账号

   */
  void update(User user);

  /**
   * description: 获取学生账号信息列表

   */
  PagingResult<User> getAdminList(RowBounds rowBounds, Map<String, Object> condition);
}
