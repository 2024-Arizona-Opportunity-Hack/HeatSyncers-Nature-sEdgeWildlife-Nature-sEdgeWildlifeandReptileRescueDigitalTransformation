# frozen_string_literal: true

class DonationBucket < ApplicationRecord
  has_many :donations
end

