class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  def can_add_stock?(ticker_symbol)
  end

  def under_stock_limit?
  end

  def stock_already_added(ticker_symbol)
  end

end
