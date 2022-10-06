class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :events, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :user_as_receiver, class_name: "user", foreign_key: :receiver_id
  has_one_attached :avatar

  after_create :create_profile

  private

  def create_profile
    Profile.create(user: self)
  end
end
