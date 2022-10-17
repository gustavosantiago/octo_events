# frozen_string_literal: true

module Api
  module V1
    class EventSerializer < ApplicationSerializer
      attributes :id, :name

      attribute :payload do |object|
        object.payload
      end
    end
  end
end
