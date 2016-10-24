class CoursesController < ApplicationController

  protect_from_forgery except: [:save]

  def add
  end

  def save
    new_course = Course.new
    new_course.name = params[:name]
    new_course.number = params[:number]
    new_course.section = params[:section]
    new_course.max_students = params[:max_students]
    new_course.departments_id = params[:department_id]
    new_course.semesters_id = params[:semester_id]

    new_course.save

    redirect_to "/dashboard"
  end

  def bootstrap
    raw_courses = JSON.parse(File.read('app/assets/courses.json'))
    raw_courses.each do |input|
      Course.create(name: input['title'], number: input['number'].to_i, section: input['section'].to_i, max_students: input['max'].to_i)
    end
    redirect_to '/'
  end
end
