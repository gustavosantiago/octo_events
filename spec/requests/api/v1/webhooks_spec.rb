require 'rails_helper'

RSpec.describe "Api::V1::Webhooks", type: :request do
  describe "GET /index" do
    context 'when acess the request' do
      subject(:index_webhook) { get '/api/v1/webhooks' }

      it 'returns response' do
        index_webhook

        expect(response).to have_http_status(:ok)
        expect(response).to be_successful
      end
    end
  end

  describe "POST /create" do
    context 'when acess the request' do
      subject(:index_webhook) { post '/api/v1/webhooks' }

      xit 'returns response' do; end
    end
  end
end
