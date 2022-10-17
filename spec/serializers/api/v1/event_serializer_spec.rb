require 'rails_helper'

RSpec.describe Api::V1::EventSerializer, type: :serializer do
  let(:event) { create(:event) }

  subject(:event_serializer) { described_class.new(event).serializable_hash }

  describe 'when the serializer is called' do
    it 'return the fields' do
      expect(event_serializer).to include(
        data: {
          id: event.id.to_s,
          type: :event,
          attributes: {
            id: event.id,
            name: event.name,
            payload: event.payload
          }
        }
      )
    end
  end
end
