class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many_attached :images

  has_many :bookmarks
  has_many :tickets
  has_many :tokens, through: :tickets

  validates :name, presence: true
  validates :category, presence: true
  validates :music_genre, presence: true
  validates :country, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :description, presence: true
  # validates :event_url, presence: true
  # validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :extended_search,	# Name, Category, Music Genre, Artist, Country, City, Description
                  against: %i[name category music_genre country city description],
                  using: { tsearch: { prefix: true }, trigram: { word_similarity: true } }

  def all_tokens
    tokens = []
    tickets.each do |ticket|
      ticket.tokens.each do |token|
        tokens << token
      end
    end
    return tokens
  end
end
