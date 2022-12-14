class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :profile, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :event_bookmarks, dependent: :destroy

  has_one_attached :avatar
  has_many :messages
  after_create :create_profile

  private

  def create_profile
    Profile.create(user: self)
  end
end
