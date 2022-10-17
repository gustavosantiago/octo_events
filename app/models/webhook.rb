# == Schema Information
#
# Table name: webhooks
#
#  id         :bigint           not null, primary key
#  event      :string           not null
#  payload    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_webhooks_on_event              (event)
#  index_webhooks_on_event_and_payload  (event,payload)
#  index_webhooks_on_payload            (payload)
#

class Webhook < ApplicationRecord
  validates :event, :payload, presence: true
end
