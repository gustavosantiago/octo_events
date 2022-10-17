require 'rails_helper'

RSpec.describe Events::CreateService, type: :service do
  let(:issue) { create(:issue) }
  let(:event_url) { 'http://example.com' }
  let(:events_data) do
    File.read(Rails.root.join('spec/fixtures/events/event_in_batches.json'))
  end

  subject(:create_service) { described_class.new(issue, event_url) }

  before do
    stub_request(:any, event_url).to_return(body: events_data)
  end

  describe 'when the issues has already created' do
    it 'create the events' do
      expect {
        create_service.call
      }.to change(Event, :count).by(5)
    end
  end
end
