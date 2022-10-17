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
class Issue < ApplicationRecord
end
