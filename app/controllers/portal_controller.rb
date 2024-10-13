# frozen_string_literal: true

class PortalController < ApplicationController
  before_action :authenticate_admin!

  def index; end
end

