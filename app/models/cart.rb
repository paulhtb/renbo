class Cart < ApplicationRecord
  belongs_to :user
  has_one :payment, class_name: 'Transaction', foreign_key: 'cart_id'
  has_many :cart_items
  has_many :tokens, through: :cart_items
  has_many :tickets, through: :tokens

  monetize :amount_cents

  validates :status, presence: true

  def checked_out
    self.status = "pending"
    save
  end

  def paid
    self.status = "closed"
    save
  end

  def total_price
    total = 0

    cart_items&.each do |item|
      total += item.token.price
    end

    return total
  end
end
