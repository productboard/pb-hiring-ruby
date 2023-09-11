# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "john-#{n}@example.com" }
  end
end
