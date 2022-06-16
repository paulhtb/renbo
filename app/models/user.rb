class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carts
  has_many :payments, through: :carts
  has_many :tokens
  has_many :bookmarks

  has_one_attached :avatar

  def new_cart
    if carts.empty? || carts.last.status != "active"
      @cart = Cart.new(status: "active")
      @cart.user = self
      @cart.save
    end
  end
end
