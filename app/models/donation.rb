# frozen_string_literal: true

class Donation < ApplicationRecord
  belongs_to :donor, class_name: "User"

  def date
    created_at.to_date
  end
end

