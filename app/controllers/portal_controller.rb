# frozen_string_literal: true

class PortalController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin!

  def index; end

  private

  def ensure_admin!
    redirect_to root_path unless current_user.is_admin?
  end
end

