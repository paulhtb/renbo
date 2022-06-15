class Ticket < ApplicationRecord
  has_one_attached :image

  belongs_to :event
  has_many :tokens

  monetize :original_price_cents

  validates :title, presence: true
  validates :description, presence: true
  validates :tier, presence: true
  validates :no_available, presence: true
end
