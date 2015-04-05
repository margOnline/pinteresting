require 'rails_helper'

describe Like do

  it {should belong_to :pin }
  it {should belong_to :user }

end
