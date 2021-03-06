class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_welcome

  has_many :orders
  has_many :admins
  has_many :bars, through: :admins
  has_one :bar

  has_one :basket

  def send_welcome
    UserMailer.with(user: self).welcome.deliver_now
  end
end

