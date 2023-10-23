package com.zjh.sms.dao.Course;

import com.github.pagehelper.PageRowBounds;
import com.zjh.sms.dto.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


@Mapper
public interface CourseMapper {

  void addCourse(Course course);

  void delete(@Param("ids") List<Integer> ids);

  void update(Course course);

  List<Course> getCourseList(PageRowBounds rowBounds, @Param("condition") Map<String, Object> condition);

  String checkCodeCount(@Param("condition") Map<String, Object> condition);

  List<Course> getCourseByMap(@Param("condition") Map<String, Object> condition);

  Course getCourseById(@Param("courseId") String courseId);
}
