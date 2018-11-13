class SenseisController < ApplicationController

  def index
    @students = policy_scope(Student)
  end

  def create
    @user = current_user

    authorize @user
  end

  def new
    @user = current_user
    @sensei = Sensei.new
    authorize @user
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    # @student = Student.find(params[:id])
    authorize @student
  end

  def update
  end

  def destroy
  end
end
