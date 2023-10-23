package com.zjh.sms.service.TeacherCourse;

import com.zjh.sms.domain.TeacherCourse;

import java.util.List;
import java.util.Map;


public interface TeacherCourseService {
  /**
   * description: 新增

   */
  void add(List<TeacherCourse> list);

  /**
   * description: 删除

   */
  void delete(List<Integer> ids);

  /**
   * description: 修改

   */
  void update(TeacherCourse teacherCourse);

  /**
   * description: 根据教师id获取教师课程信息

   */
  List<TeacherCourse> getCourseListById(String id);
  /**
  * description: 根据教师id获取教师用户所管理的专业、班级、课程名等信息

  */
  List<Map<String, Object>> getProfessionInfo(String teacherId);
  /**
  * description: 管理员用户获取所有的班级和课程，渲染成下拉框选择

  */
  List<Map<String, Object>> getProfessionInfoByAdmin();
  /**
  * description: 课程表中获取课程详细信息

  */
  TeacherCourse getCourseInfo(Map<String, Object> condition);
}
