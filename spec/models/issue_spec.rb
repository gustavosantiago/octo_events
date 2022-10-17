# == Schema Information
#
# Table name: issues
#
#  id         :bigint           not null, primary key
#  hook       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  hook_id    :string
#
require 'rails_helper'

RSpec.describe Issue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
