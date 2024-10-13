# frozen_string_literal: true

require_relative "seeds/admin"
require_relative "seeds/donor"
require_relative "seeds/donations"

if Rails.env.development?
  initialize_admin!
  initialize_default_donors!
  add_fake_donors!
  add_donations!
end

