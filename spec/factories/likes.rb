FactoryGirl.define do

  factory :like do
    after(:create) do |like|
      like.user ||= FactoryGirl.build(:user, like: like)
      like.pin ||= FactoryGirl.build(:pin, like: like)
    end
  end

end
