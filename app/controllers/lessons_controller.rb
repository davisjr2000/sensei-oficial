class LessonsController < ApplicationController

  def index
    @subjects = Subject.all
    @user = current_user
    @lessons = policy_scope(Lesson)
  end

  def create
    @lesson = Lesson.find(params[:id])
    authorize @lesson
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
