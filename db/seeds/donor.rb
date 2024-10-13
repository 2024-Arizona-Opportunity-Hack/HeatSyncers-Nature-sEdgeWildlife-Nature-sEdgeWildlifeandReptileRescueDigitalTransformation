# frozen_string_literal: true

require "faker"

def initialize_default_donors! # rubocop:disable Metrics/AbcSize
  donor_emails = [
    "donor_one@example.com",
    "donor_two@example.com",
    "donor_three@example.com",
  ]

  donor_emails.each do |donor_email|
    donor = User.find_by(email: donor_email)
    if donor
      puts "Donor user already exists (#{donor.email})"
      next
    end

    donor_name = donor_email.split("@").first.titleize

    User.create!(
      first_name: donor_name.split.first,
      last_name: donor_name.split.last,
      street_address: Faker::Address.street_address,
      apt_suite: Faker::Address.secondary_address,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr,
      zip_code: Faker::Address.zip_code,
      email: donor_email,
      password: "password",
      password_confirmation: "password",
      is_donor: true
    )

    puts "Donor user created (#{donor_email})"
  end
end

def add_fake_donors!
  starting_id = User.maximum(:id).to_i + 1

  puts "Adding 20 fake donors starting at ID #{starting_id}"

  20.times do |i|
    User.new(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      street_address: Faker::Address.street_address,
      apt_suite: Faker::Address.secondary_address,
      city: Faker::Address.city,
      state: Faker::Address.state_abbr,
      zip_code: Faker::Address.zip_code,
      email: "donor_#{starting_id + i}@example.com",
      password: "password",
      password_confirmation: "password",
      is_donor: true
    ).save!
  end

  puts "Added 20 fake donors (donor_#{starting_id} through donor_#{starting_id + 19})"
end

