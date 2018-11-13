class SenseiSubjectsController < ApplicationController
  def index
    @senseis = policy_scope(Sensei)
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
