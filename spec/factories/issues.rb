FactoryBot.define do
  factory :issue do
    hook_id { '1234' }
    hook { JSON.parse(File.read(Rails.root.join('spec/fixtures/hooks.json'))) }
  end
end
