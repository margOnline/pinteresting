FactoryGirl.define do
  factory :pin do
    description 'some picture'
    image { File.new("#{Rails.root}/spec/images/test.png") } 
    after(:create) do |pin|
      pin.user ||= FactoryGirl.build(:user, pin: pin)
    end
  end

end
