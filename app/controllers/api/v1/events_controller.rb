# frozen_string_literal: true

module Api
  module V1
    class EventsController < ApplicationController
      before_action :authenticate_user!
      before_action :set_issue

      def index
        events = @issue.events.order(id: :asc)
        render json: EventSerializer.new(
          events
        ).serializable_hash.to_json, status: :ok
      end

      private

      def set_issue
        @issue = Issue.find_by(id: params[:issue_id])

        not_found if @issue.nil?
      end
    end
  end
end
