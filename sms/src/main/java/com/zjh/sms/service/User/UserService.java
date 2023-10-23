package com.zjh.sms.service.User;

import com.zjh.sms.domain.Upload;
import com.zjh.sms.dto.User;

import java.util.List;
import java.util.Map;

/**
 * Description 登陆用户接口

 **/
public interface UserService {
  /**
  * description: 根据用户、密码登陆

  */
  User getStudentInfo(Map<String, Object> condition);
  /**
   * description: 修改密码

   */
  boolean update(Map<String, Object> condition);
  /**
  * description: 获取树状数据

  */
  List<Object> getTree();
  /**
  * description: 获取token

  */
  String getToken(User user, long time);
  /**
  * description: 根据等级和id获取用户信息

  */
  User findUser(Map<String, Object> condition);
  /**
  * description: 获取默哀模式

  */
  boolean getSilent();
  /**
  * description: 修改默哀模式

  */
  boolean setSilent(Integer state);
}
