# frozen_string_literal: true

def initialize_admin!
  admin = User.find_by(email: "admin@example.com")

  if admin
    puts "Admin user already exists (admin@example.com)"
    return
  end

  User.create!(
    email: "admin@example.com",
    password: "password",
    password_confirmation: "password",
    is_admin: true
  )

  puts "Admin user created (admin@example.com)"
end

