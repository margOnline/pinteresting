class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pins
  has_many :likes
  has_many :liked_pins, through: :likes, source: :pin

  validates :name, presence: true

  def has_liked?(pin)
    self.liked_pins.include?(pin)
  end
end
