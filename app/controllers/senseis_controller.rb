class SenseisController < ApplicationController

  def index
    @students = policy_scope(Student)

  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    # @student = Student.find(params[:id])
    authorize @student
  end

  def update
  end

  def destroy
  end
end
