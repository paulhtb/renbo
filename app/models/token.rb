class Token < ApplicationRecord
  has_many :cart_item
  belongs_to :ticket
  belongs_to :user

  validates :status, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :NFT_id, presence: true
  # validates :unlockable, presence: true
  # validates: unlocked, presence: true
end
