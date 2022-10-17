require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'attributes' do
    it { should respond_to(:payload) }
    it { should respond_to(:name) }
    it { should respond_to(:issue_id) }
  end

  describe 'associations' do
    it { should belong_to(:issue).class_name('Issue') }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:payload) }
    it { should validate_presence_of(:issue_id) }
  end

  describe 'indexes' do
    it { should have_db_index(:name) }
    it { should have_db_index(:issue_id) }
  end
end
