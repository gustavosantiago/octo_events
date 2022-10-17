require 'rails_helper'

RSpec.describe Issues::CreateService, type: :service do
  let(:issue_data) do
    JSON.parse File.read(
      Rails.root.join('spec/fixtures/issues/payload.json')
    )
  end

  subject(:create_service) { described_class.new(issue_data.symbolize_keys) }

  describe 'when the received github data' do
    before do
      allow(Events::CreateService).to receive(:call).and_return(true)
    end

    it 'create the issue' do
      expect {
        create_service.call
      }.to change(Issue, :count).by(1)
    end

    it 'call Events::CreateService' do
      expect(Events::CreateService).to receive(:call).once

      create_service.call
    end
  end
end
