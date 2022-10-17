# frozen_string_literal: true

class ApplicationController < ActionController::API
  def not_found
    render json: {
      data: {
        message: I18n.t('requests.status.not_found')
      }
    }, status: :not_found
  end
end
