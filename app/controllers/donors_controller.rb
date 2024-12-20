# frozen_string_literal: true

class DonorsController < ApplicationController
  before_action :authenticate_admin!

  layout "portal"

  def index
    @donors = User.donors.page params[:page]
  end

  def show
    @donor = User.find(params[:id])
  end

  def new
    @donor = User.new
  end

  def edit
    @donor = User.find(params[:id])
  end

  def create
    @donor = User.new(user_params)

    if @donor.save
      redirect_to @donor
    else
      render :new
    end
  end

  def update
    @donor = User.find(params[:id])

    if @donor.update(user_params)
      redirect_to @donor
    else
      render :edit
    end
  end

  def destroy
    @donor = User.find(params[:id])
    @donor.destroy

    redirect_to donors_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :is_donor)
  end
end

