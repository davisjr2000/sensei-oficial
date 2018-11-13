class LessonsController < ApplicationController

  def index
    @lessons = policy_scope(Lesson)
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
