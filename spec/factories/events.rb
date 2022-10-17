FactoryBot.define do
  factory :event do
    issue
    type { 'PushEvent' }
    payload { JSON.parse(File.read(Rails.root.join('spec/fixtures/payload.json'))) }
  end
end
