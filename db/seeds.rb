# frozen_string_literal: true

require_relative "seeds/admin"
require_relative "seeds/donor"
require_relative "seeds/donations"
require_relative "seeds/donation_buckets"

if Rails.env.development?
  initialize_admin!
  initialize_default_donors!
  initialize_donation_buckets!

  add_fake_donors!
  add_donations!
end

