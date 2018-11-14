class SenseisController < ApplicationController

  def new
    @user = current_user
    @sensei = Sensei.new
    authorize @sensei
  end

  def create
    @user = current_user
    @sensei = Sensei.new(user_id: params[:user_id])
    authorize @sensei
    if @sensei.save
      redirect_to user_sensei_path(params[:user_id], @sensei)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @sensei = Sensei.find(params[:id])
    authorize @sensei
  end

  def index
    @senseis = policy_scope(Sensei)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def sensei_params
    params.require(:sensei).permit(:user_id)
  end
end
