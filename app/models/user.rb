# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :donor_contacts, dependent: :destroy
  has_many :donations, dependent: :nullify

  scope :donors, -> { where(is_donor: true) }
  scope :admins, -> { where(is_admin: true) }

  def name
    "#{first_name} #{last_name}"
  end

  def address
    "#{street_address} #{apt_suite} #{city}, #{state} #{zip}"
  end
end

