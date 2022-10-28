class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', class_name: 'User'
  validates :event_name, length: { minimum: 3 }
  has_many :event_bookmarks, dependent: :destroy
end
