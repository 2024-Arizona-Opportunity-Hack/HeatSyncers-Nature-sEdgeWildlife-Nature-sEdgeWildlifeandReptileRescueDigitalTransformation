# frozen_string_literal: true

def initialize_donation_buckets!
  buckets = [
    "General Fund",
    "Medical Fund",
    "Education Fund",
    "Building Fund",
    "Other",
  ]

  buckets.each do |name|
    DonationBucket.find_or_create_by!(name:)
  end
end

