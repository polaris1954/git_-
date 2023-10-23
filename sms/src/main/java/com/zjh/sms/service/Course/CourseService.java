package com.zjh.sms.service.Course;

import com.zjh.sms.dto.Course;
import com.zjh.sms.utils.PagingResult;
import org.apache.ibatis.session.RowBounds;

import java.util.List;
import java.util.Map;


public interface CourseService {
  /**
   * description: 新增课程信息
   */
  void addCourse(Course course);
  /**
   * description: 删除课程信息
   */
  void delete(List<Integer> ids);

  /**
   * description: 修改课程信息
   */
  void update(Course course);
  /**
  * description: 查询课程信息
  */
  PagingResult<Course> getCourseList(RowBounds rowBounds, Map<String, Object> condition);
  /**
  * description: 根据专业、学期获取课程列表
  */
  List<Course> getCourseByMap(Map<String, Object> condition);
}

