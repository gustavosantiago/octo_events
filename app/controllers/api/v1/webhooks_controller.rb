# frozen_string_literal: true

module Api
  module V1
    class WebhooksController < ApplicationController
      def payload
        binding.pry
      end
    end
  end
end
