# frozen_string_literal: true

class SettingsController < ApplicationController
  before_action :authenticate_user!

  def update
    current_user.settings.merge!(settings_params)
    current_user.save

    redirect_to root_path, notice: 'Settings updated'
  end

  private

  def settings_params
    params.require(:settings).permit(:theme)
  end
end
