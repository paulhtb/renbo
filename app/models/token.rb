class Token < ApplicationRecord
  has_many :cart_item
  belongs_to :ticket
  belongs_to :user
  has_one :event, through: :ticket

  before_create :set_sequence

  validates :status, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :NFT_id, presence: true
  # validates :unlockable, presence: true
  # validates: unlocked, presence: true

  def set_sequence
    self.sequence_num = Token.where(ticket_id: self.ticket_id).count + 1
  end

  include PgSearch::Model
  pg_search_scope :extended_search,	# Name, Category, Music Genre, Artist, Country, City, Description
                  associated_against: {
                    ticket: %i[title description],
                    event: %i[name category music_genre country city description]
                  },
                  using: { tsearch: { prefix: true }, trigram: { word_similarity: true } }

  pg_search_scope :category_search,	# Category
                  associated_against: { event: %i[category] },
                  using: { tsearch: { prefix: true }, trigram: { word_similarity: true } }

  pg_search_scope :country_search,	# Country
                  associated_against: { event: %i[country] },
                  using: { tsearch: { prefix: true }, trigram: { word_similarity: true } }

  pg_search_scope :city_search,	# City
                  associated_against: { event: %i[city] },
                  using: { tsearch: { prefix: true }, trigram: { word_similarity: true } }

end
