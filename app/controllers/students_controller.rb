class StudentsController < ApplicationController
  def index
    @students = Student.all
    render template: "students/index"
  end
  
  def show
    @student = Student.find_by(id: params[:id])
    render template: "students/show"
  end
end
