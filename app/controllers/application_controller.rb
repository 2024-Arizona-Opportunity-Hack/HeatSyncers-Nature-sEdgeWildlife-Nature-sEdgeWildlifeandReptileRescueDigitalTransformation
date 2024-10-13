# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authenticate_admin!
    redirect_to root_path unless current_user&.is_admin?
  end

  def after_sign_in_path_for(resource)
    if resource.is_admin?
      portal_path
    else
      root_path
    end
  end
end

