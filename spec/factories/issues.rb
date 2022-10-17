FactoryBot.define do
  factory :issue do
    payload { JSON.parse(File.read(Rails.root.join('spec/fixtures/issues/payload.json'))) }
  end
end
