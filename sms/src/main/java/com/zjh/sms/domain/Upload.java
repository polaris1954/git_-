package com.zjh.sms.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Upload {
  /**
   * id
   */
  private Integer id;
  /**
   * 用户 id
   */
  private String userId;
  /**
   * 用户等级
   */
  private Integer level;
  /**
   * 储存地址
   */
  private String url;
}
