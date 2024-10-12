# frozen_string_literal: true

class PortalController < ApplicationController
  def index
    @portals = Portal.all
  end
end

