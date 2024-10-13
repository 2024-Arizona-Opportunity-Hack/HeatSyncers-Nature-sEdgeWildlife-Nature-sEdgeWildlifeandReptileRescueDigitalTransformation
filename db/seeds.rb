# frozen_string_literal: true

require_relative "seeds/admin"
require_relative "seeds/donor"

if Rails.env.development?
  initialize_admin!
  initialize_default_donors!
  add_fake_donors!
end

