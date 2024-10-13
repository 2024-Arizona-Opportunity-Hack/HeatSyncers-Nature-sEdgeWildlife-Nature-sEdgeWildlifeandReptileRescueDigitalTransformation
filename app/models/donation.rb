# frozen_string_literal: true

class Donation < ApplicationRecord
  belongs_to :donor, class_name: "User"
end

