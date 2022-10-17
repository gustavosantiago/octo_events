# frozen_string_literal: true

module Api
  module V1
    class WebhooksController < ApplicationController
      def index
        render json: { data: [] }, status: :ok
      end

      def payload; end
    end
  end
end
