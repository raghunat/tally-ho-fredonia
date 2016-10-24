class DashboardController < ApplicationController
  def index
    if session[:user].nil?
      redirect_to '/'
    end
    @courses = Course.all
  end

  def example_new
    new_course = Course.new
    new_course.name = 'Some Class'
    new_course.number = 1
    new_course.save
    redirect_to '/dashboard'
  end

  def delete_course
    course_to_delete = Course.find(params[:id])
    course_to_delete.destroy
    redirect_to '/dashboard'
  end

  # Give a course a counter
  def create_counter
    counter = Counter.new
    counter.users_id = params[:users_id]
    counter.courses_id = params[:courses_id]
    if !counter.save
      render json: "Could not Save", status: 400
    end

    counts = Counter.where(courses_id: params[:courses_id])

    # respond with the new count
    render json: counts
  end

  def remove_counter
    counter = Counter.find_by_courses_id(params[:course_id])
    counter.destroy
    render json: Counter.where(courses_id: params[:course_id])
  end

  # Update the view with the latest counts
  def all_courses
    render json: Course.all.to_json(include: :counters)
  end

  # Login
  def login

  end


end
