require 'rails_helper'
RSpec.describe 'Session', typ: :request do
  let(:user) { create(:user) }
  let(:sign_in_url) { '/auth/sign_in'  }
  let(:sign_out_url) { '/auth/sign_out' }
  let(:params) do
    {
      email: user.email,
      password: user.password
    }
  end

  subject(:sign_in) { post sign_in_url, params: params, as: :json }

  describe 'POST /auth/sign_in' do
    context 'when login params is valid' do
      it 'returns status 200' do
        sign_in
        expect(response).to have_http_status(200)
      end

      it 'returns access-token in authentication header' do
        sign_in
        expect(response.headers['access-token']).to be_present
      end

      it 'returns client in authentication header' do
        sign_in
        expect(response.headers['client']).to be_present
      end

      it 'returns expiry in authentication header' do
        sign_in
        expect(response.headers['expiry']).to be_present
      end

      it 'returns uid in authentication header' do
        sign_in
        expect(response.headers['uid']).to be_present
      end

      context 'when login params is invalid' do
        let(:params) { {} }

        it 'returns unathorized status 401' do
          sign_in
          expect(response.status).to eq 401
        end
      end
    end
  end

  describe 'DELETE /api/v1/auth/sign_out' do
    before do
      sign_in

      @headers = {
        'uid' => response.headers['uid'],
        'client' => response.headers['client'],
        'access-token' => response.headers['access-token']
      }
    end

    it 'returns status 200' do
      delete sign_out_url, headers: @headers
      expect(response).to have_http_status(200)
    end
  end
end