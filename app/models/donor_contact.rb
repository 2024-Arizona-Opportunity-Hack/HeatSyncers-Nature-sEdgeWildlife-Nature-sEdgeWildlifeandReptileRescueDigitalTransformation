# frozen_string_literal: true

class DonorContact < ApplicationRecord
  belongs_to :donor, class_name: "User"

  validates :type, presence: true, inclusion: { in: %w[phone email in_person] }
end

