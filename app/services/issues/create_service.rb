# frozen_string_literal: true

module Issues
  class CreateService < ApplicationService
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def call
      create_issue
    rescue => e
      raise "Has an error: #{e}"
    end

    private

    def create_issue
      ActiveRecord::Base.transaction do
        begin
          issue = Issue.new(payload: params)

          if issue.save!
            event_url = params[:repository][:events_url]

            Events::CreateService.call(issue, event_url)
          end
        end
      end
    end
  end
end