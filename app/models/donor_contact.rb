# frozen_string_literal: true

class DonorContact < ApplicationRecord
  belongs_to :donor, class_name: "User"
end

