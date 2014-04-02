# == Schema Information
#
# Table name: species
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  latin       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

FactoryGirl.define do
  factory :species do
    name 'Species'
    sequence(:latin) { |n| "Pesca Latinus#{n}" }
    description { "This is a #{name}..." }

    trait :cod do
      name 'Cod'
    end

    trait :plaice do
      name 'European Plaice'
    end

    trait :trout do
      name 'Trout'
    end

    factory :cod_fish, traits: [:cod]
    factory :plaice_fish, traits: [:plaice]
    factory :trout_fish, traits: [:trout]
  end
end
