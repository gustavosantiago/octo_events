FactoryBot.define do
  factory :event do
    issue
    name { 'PushEvent' }
    payload { JSON.parse(File.read(Rails.root.join('spec/fixtures/events/payload.json'))) }
  end
end
