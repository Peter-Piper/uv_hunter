FactoryGirl.define do
  factory :catch do
    length 45.6
    weight 5.3
    fish

    trait :cod_catch do
      association :fish,  factory: :cod_fish
    end

    trait :plaice_catch do
      association :fish,  factory: :plaice_fish
    end

    trait :trout_catch do
      association :fish,  factory: :trout_fish
    end
  end
end
