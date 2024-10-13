# frozen_string_literal: true

class DonorsController < ApplicationController
  def index
    @donors = User.where(is_donor: true)
  end

  def show
    @donor = User.find(params[:id])
  end

  def new
    @donor = User.new
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

