class StudentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :refresh]

  def index
    @students = policy_scope(Student)
  end

  def create
    @user = current_user
    @student = Student.new(user_id: params[:user_id])
    authorize @student
    if @student.save
      redirect_to user_student_path(params[:user_id], @student)
    else
      render :new
    end
  end

  def new
    @user = current_user
    @student = Student.new
    authorize @student
  end

  def edit
  end

  def show
    @user = current_user
    @student = Student.find(params[:id])
    authorize @student
  end

  def update
  end

  def destroy
  end

  def student_params
    params.require(:student).permit(:user_id)
  end
end
