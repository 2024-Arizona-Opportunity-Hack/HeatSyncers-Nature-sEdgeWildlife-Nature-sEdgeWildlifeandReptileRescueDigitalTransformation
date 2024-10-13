# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :donor_contacts, dependent: :destroy, foreign_key: :donor_id, inverse_of: :donor
  has_many :donations, dependent: :nullify, foreign_key: :donor_id, inverse_of: :donor

  scope :donors, -> { where(is_donor: true) }
  scope :admins, -> { where(is_admin: true) }

  def name
    "#{first_name} #{last_name}"
  end

  def address
    "#{street_address} #{apt_suite} #{city}, #{state} #{zip_code}"
  end

  def last_contact
    donor_contacts.last&.contact_date
  end

  def last_donation
    donations.last&.amount
  end

  def total_donations
    total = donations.sum(:amount)
    total.positive? ? total : nil
  end
end

