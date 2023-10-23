package com.zjh.sms.service.Upload;

import com.zjh.sms.domain.Upload;

import java.util.Map;

/**
 * Description 上传文件service层

 **/
public interface UploadService {
  /**
   * description: 上传头像

   */
  void upload(Upload upload);
  /**
  * description: 获取头像

  */
  String getHeader(Map<String, Object> condition);
}
