class StudentsController < ApplicationController
  def index
    if current_user
      @students = Student.all
      render template: "students/index"
    end
  end
  
  def show
    @student = Student.find_by(id: params[:id])
    render template: "students/show"
  end

  def create
    student = Student.new
    student.user_id = current_user.id
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.email = params[:email]
    student.phone_number = params[:phone_number]
    student.short_bio = params[:short_bio]
    student.linked_in = params[:linked_in]
    student.twitter = params[:twitter]
    student.blog_website = params[:blog_website]
    student.online_resume = params[:online_resume]
    student.github = params[:github]
    student.photo = params[:photo]
    student.save
    render json: student.as_json
  end
end
