# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      def index
        render json: { data: [] }, status: :ok
      end
    end
  end
end
