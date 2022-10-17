require 'rails_helper'

RSpec.describe "Api::V1::Events", type: :request do
  describe "GET /index" do
    context 'when acess the request' do
      let(:issue) { create(:issue) }
      let!(:event) { create(:event, issue: issue) }

      subject(:index_events) { get "/api/v1/issues/#{issue.id}/events" }

      it 'returns response' do
        index_events

        expect(response).to have_http_status(:ok)
        expect(response).to be_successful
      end
    end
  end
end
