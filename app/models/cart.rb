class Cart < ApplicationRecord
  belongs_to :user
  has_one :payment, class_name: 'Transaction', foreign_key: 'transaction_id'
  has_many :cart_items
  has_many :tokens, through: :cart_items
  has_many :tickets, through: :tokens

  validates :status, presence: true

  def checked_out
    @status = "pending"
  end

  def paid
    @status = "closed"
  end

  def total_price
    total = 0.00

    cart_items&.each do |item|
      total += item.token.price
    end

    return total
  end
end
