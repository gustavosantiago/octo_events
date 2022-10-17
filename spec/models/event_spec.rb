# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  name       :string
#  payload    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  issue_id   :bigint           not null
#
# Indexes
#
#  index_events_on_issue_id  (issue_id)
#
# Foreign Keys
#
#  fk_rails_...  (issue_id => issues.id)
#
require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
