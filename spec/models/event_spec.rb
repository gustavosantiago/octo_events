# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  payload    :text             not null
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issue_id   :bigint           not null
#
# Indexes
#
#  index_events_on_issue_id  (issue_id)
#  index_events_on_type      (type)
#
# Foreign Keys
#
#  fk_rails_...  (issue_id => issues.id)
#
require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'attributes' do
    it { should respond_to(:payload) }
    it { should respond_to(:type) }
    it { should respond_to(:issue_id) }
  end

  describe 'associations' do
    it { should belong_to(:issue).class_name('Issue') }
  end

  describe 'validations' do
    it { should validate_presence_of(:type) }
    it { should validate_presence_of(:payload) }
    it { should validate_presence_of(:issue_id) }
  end

  describe 'indexes' do
    it { should have_db_index(:type) }
    it { should have_db_index(:issue_id) }
  end
end
