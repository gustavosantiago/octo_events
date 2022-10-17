require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'attributes' do
    it { should respond_to(:payload) }
  end

  describe 'associations' do
    it { should have_many(:events).class_name('Event') }
  end
end
