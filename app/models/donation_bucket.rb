# frozen_string_literal: true

class DonationBucket < ApplicationRecord
  has_many :donations, dependent: :nullify

  def donations_sum
    ActiveSupport::NumberHelper.number_to_currency(donations.sum(:amount))
  end
end

