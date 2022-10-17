FactoryBot.define do
  factory :webhook do
    event { 'create' }
    payload  { { id: 1, name: 'exemple' } }
  end
end
