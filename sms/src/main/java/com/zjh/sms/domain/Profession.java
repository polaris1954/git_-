package com.zjh.sms.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Profession {
  /**
   * 专业id
   */
  private Integer id;
  /**
   * 专业名
   */
  private String name;
}
