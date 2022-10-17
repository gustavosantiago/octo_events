# frozen_string_literal: true

module Api
  module V1
    class WebhooksController < ApplicationController
      def payload
        service = ::Issues::CreateService.call(params)

        if service
          render json: { data: [] }, status: :created
        end
      rescue => e
        render json: { error: { message: "#{e}" } }, status: :unprocessable_entity
      end
    end
  end
end
