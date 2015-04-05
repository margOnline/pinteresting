require 'rails_helper'

describe Pin do

  it {should have_many :likes }
  it {should belong_to :user }

  describe "validations" do
    it { should validate_presence_of :description }
    it { should have_attached_file(:image) }
    it { should validate_attachment_presence(:image) }
    it { should validate_attachment_content_type(:image).
      allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
  end

end
