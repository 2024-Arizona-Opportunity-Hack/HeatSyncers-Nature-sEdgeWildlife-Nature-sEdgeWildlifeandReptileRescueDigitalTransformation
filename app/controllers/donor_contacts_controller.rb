# frozen_string_literal: true

class DonorContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @donor_contacts = DonorContact.all
  end

  def show
    @donor_contact = DonorContact.find(params[:id])
  end

  def new
    @donor_contact = DonorContact.new
  end

  def edit
    @donor_contact = DonorContact.find(params[:id])
  end

  def create
    @donor_contact = DonorContact.new(donor_contact_params)

    if @donor_contact.save
      redirect_to @donor_contact
    else
      render :new
    end
  end

  def update
    @donor_contact = DonorContact.find(params[:id])

    if @donor_contact.update(donor_contact_params)
      redirect_to @donor_contact
    else
      render :edit
    end
  end

  def destroy
    @donor_contact = DonorContact.find(params[:id])
    @donor_contact.destroy

    redirect_to donor_contacts_path
  end

  private

  def donor_contact_params
    params.require(:donor_contact).permit(:type, :note, :donor_id)
  end
end

