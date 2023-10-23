package com.zjh.sms.service.Timetable;

import com.zjh.sms.domain.CourseInfo;
import com.zjh.sms.domain.WeekCourse;

import java.util.List;
import java.util.Map;

/**
 * Description 课程表Service层
 **/
public interface TimetableService {
  /**
   * description: 新增课程表

   */
  void add(List<WeekCourse> list);

  /**
   * description: 管理员用户获取课程表

   */
  List<WeekCourse> getTimetable(Map<String, Object> condition);
  /**
  * description: 学生用户获取课程表

  */
  List<WeekCourse> getTimetableByStudent(Map<String, Object> condition);
  /**
  * description: 教师用户获取课程表

  */
  List<WeekCourse> getTimetableByTeacher(Map<String, Object> condition);
  /**
  * description: 新增课程具体安排（周数等）

  */
  void updateCourseInfo(CourseInfo courseInfo);
}
