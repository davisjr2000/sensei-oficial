class StudentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :refresh]

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
  end

  def update
  end

  def destroy
  end
end
