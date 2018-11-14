class AvailabititiesController < ApplicationController

  def new
    @user = current_user
    @sensei = Sensei.find(params[:sensei_id])
    @availability = Availability.new
    authorize @user
  end

  def create
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
