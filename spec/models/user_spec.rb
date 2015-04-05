require 'rails_helper'

describe User do

  it {should have_many :pins }
  it {should have_many :likes }
  it {should have_many :liked_pins }

  describe "validations" do
    it { should validate_presence_of :name }
  end

  describe "#has_liked?" do
    it "indicates if user has liked a specific pin" do
      user = FactoryGirl.create(:user)
      pin = FactoryGirl.create(:pin, user: user)
      like = FactoryGirl.create(:like, user: user, pin: pin)
      expect(user.has_liked?(pin)).to eq true
    end
  end

end