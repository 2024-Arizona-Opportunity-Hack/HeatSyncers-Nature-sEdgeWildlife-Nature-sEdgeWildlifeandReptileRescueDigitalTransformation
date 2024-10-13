# frozen_string_literal: true

class DonationsController < ApplicationController
  before_action :authenticate_admin!, except: %i[new create]

  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(
      amount: donation_params[:amount],
      note: donation_params[:note]
    )

    @donation.donor = User.new(donation_params[:donor_attributes])

    if @donation.save
      redirect_to @donation
    else
      render :new
    end
  end

  def update
    @donation = Donation.find(params[:id])

    if @donation.update(
      amount: donation_params[:amount],
      note: donation_params[:note]
    )
      redirect_to @donation
    else
      render :edit
    end
  end

  def destroy
    @donation = Donation.find(params[:id])
    @donation.destroy

    redirect_to donations_path
  end

  private

  def donation_params
    params.require(:donation).permit(:amount, :note,
      donor_attributes: %i[first_name last_name email street_address apt_suite city state zip])
  end
end

