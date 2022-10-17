# frozen_string_literal: true

require 'net/http'

module Events
  class CreateService < ApplicationService
    attr_reader :issue, :event_url

    def initialize(issue, event_url)
      @issue = issue
      @event_url = event_url
    end

    def call
      create_events
    rescue => e
      raise "Has an error: #{e}"
    end

    private

    def create_events
      events_data.each do |data|
        ActiveRecord::Base.transaction do
          event = issue.events.build(
            name: data['type'],
            payload: data['payload']
          )

          event.save!
        end
      end
    end

    def events_data
      @events_data ||= JSON.parse(events_request)
    end

    def events_request
      Net::HTTP.get(URI(event_url))
    rescue SocketError => e
      raise "Error connection: #{e}"
    end
  end
end