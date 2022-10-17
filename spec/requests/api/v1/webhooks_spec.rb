require 'rails_helper'

RSpec.describe "Api::V1::Webhooks", type: :request do
  xdescribe "POST /payload" do
    context 'when acess the request' do
      subject(:payload) { post '/api/v1/webhooks/payload' }

      xit 'returns response' do; end
    end
  end
end
