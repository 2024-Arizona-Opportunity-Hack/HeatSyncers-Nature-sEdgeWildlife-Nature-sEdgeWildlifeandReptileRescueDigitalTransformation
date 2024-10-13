# frozen_string_literal: true

def add_donations! # rubocop:disable Metrics/AbcSize
  puts "Creating random donations for #{User.donors.count} donors..."
  User.donors.each do |donor|
    rand(1..5).times do
      Donation.create(
        donor_id: donor.id,
        amount: rand(1..100),
        note: Faker::Lorem.sentence,
        donation_bucket: DonationBucket.all.sample,
        created_at: Faker::Date.between(from: 1.year.ago, to: Time.zone.today)
      )
    end
  end

  puts "Many donations created"
end

