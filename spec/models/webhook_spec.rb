require 'rails_helper'

RSpec.describe Webhook, type: :model do
  describe 'attributes' do
    it { should respond_to(:event) }
    it { should respond_to(:payload) }
  end

  describe 'validations' do
    it { should validate_presence_of(:event) }
    it { should validate_presence_of(:payload) }
  end
end
