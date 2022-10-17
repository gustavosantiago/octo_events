# == Schema Information
#
# Table name: issues
#
#  id         :bigint           not null, primary key
#  payload    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Issue < ApplicationRecord
  has_many :events

  validates :payload, presence: true
end
