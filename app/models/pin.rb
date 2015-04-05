class Pin < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  has_many :likes, dependent: :destroy
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :description, presence: true
  validates :image, presence: true
  validates_attachment_content_type :image, :content_type => /\Aimage/
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
