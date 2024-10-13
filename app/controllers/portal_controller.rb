# frozen_string_literal: true

class PortalController < ApplicationController
  before_action :authenticate_admin!

  layout "portal"

  def index; end
end

