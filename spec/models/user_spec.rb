require 'rails_helper'

describe User do

  it {should have_many :pins }
  it {should have_many :likes }

  describe "validations" do
    it { should validate_presence_of :name }
  end

end