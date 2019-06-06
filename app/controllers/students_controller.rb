class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :activate]
  skip_before_action :verify_authenticity_token

  def index
    @students = Student.all
  end

  def show
     @student = Student.find(params[:id])
  end

  def new
  end

  def create
          @student = Student.create(first_name: params["first_name"], last_name: params["second_name"], created_at: params["created_at"].to_datetime, updated_at: params["updated_at"].to_datetime)
          redirect_to student_path(@student)
  end

  def edit
  end

  def update
     if params[:first_name]
        @student.update(first_name: params["first_name"], last_name: params["second_name"], updated_at: params["updated_at"].to_datetime)
     else
        @student.update(active: params[:active], updated_at: params["updated_at"].to_datetime)
     end
    redirect_to student_path
  end

  def activate
  end

  def destroy
     @student.destroy
     redirect_to students_path
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
