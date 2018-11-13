class SenseisController < ApplicationController

  def index
    @senseis = policy_scope(Sensei)

  end

  def create
    raise
    @sensei = Sensei.find(params[:id])
    authorize @sensei
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
