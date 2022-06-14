class Token < ApplicationRecord
  has_many :cart_item
  belongs_to :ticket
  belongs_to :user
  before_create :set_sequence

  def set_sequence
    self.sequence_num = Token.where(ticket_id: self.ticket_id).count + 1
  end

  validates :status, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :NFT_id, presence: true
  # validates :unlockable, presence: true
  # validates: unlocked, presence: true
end
