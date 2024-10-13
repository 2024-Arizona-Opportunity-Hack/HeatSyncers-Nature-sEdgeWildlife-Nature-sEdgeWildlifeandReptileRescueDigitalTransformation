# frozen_string_literal: true

def initialize_donors!
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

    User.create!(
      email: donor_email,
      password: "password",
      password_confirmation: "password",
      is_donor: true
    )

    puts "Donor user created (#{donor_email})"
  end
end

