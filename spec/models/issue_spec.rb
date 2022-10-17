# == Schema Information
#
# Table name: issues
#
#  id         :bigint           not null, primary key
#  hook       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hook_id    :string           not null
#
require 'rails_helper'

RSpec.describe Issue, type: :model do
  describe 'attributes' do
    it { should respond_to(:hook) }
    it { should respond_to(:hook_id) }
  end

  describe 'associations' do
    it { should have_many(:events).class_name('Event') }
  end
end
