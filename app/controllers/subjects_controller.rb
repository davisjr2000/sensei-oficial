class SubjectsController < ApplicationController
  def index
    @subjects = policy_scope(Subject)
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
