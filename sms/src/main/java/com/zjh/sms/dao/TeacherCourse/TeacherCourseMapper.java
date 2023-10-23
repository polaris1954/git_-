package com.zjh.sms.dao.TeacherCourse;

import com.zjh.sms.domain.TeacherCourse;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


@Mapper
public interface TeacherCourseMapper {

  void add(TeacherCourse teacherCourse);

  void delete(@Param("ids") List<Integer> ids);

  void update(TeacherCourse teacherCourse);

  List<TeacherCourse> getCourseListById(@Param("id") String id);

  List<TeacherCourse> getGradeInfoByMap(@Param("condition") Map<String, Object> condition);

  String getTeacherId(@Param("condition") Map<String, Object> condition);

  TeacherCourse getCourseInfo(@Param("condition") Map<String, Object> condition);
}
