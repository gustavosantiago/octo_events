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
class Issue < ApplicationRecord
  has_many :events

  validates :hook, :hook_id, presence: true
end
