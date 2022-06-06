class Ticket < ApplicationRecord
  has_one_attached :image

  belongs_to :event
  has_many :tokens

  validates :title, presence: true
  validates :description, presence: true
  validates :tier, presence: true
  validates :no_available, presence: true
end
