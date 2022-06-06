class Event < ApplicationRecord
  has_many :bookmarks
  has_many :tickets
  has_many :tokens, through: :tickets

  validates :name, presence: true
  validates :category, presence: true
  validates :music_genre, presence: true
  validates :country, presence: true
  validates :start_time, presence: true
  validates :end_times, presence: true
  validates :description, presence: true
  # validates :event_url, presence: true
  # validates :address, presence: true
end
