class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:login]
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end

  has_many :ivent, dependent: :destroy
  attachment :user_image
  has_many :participant, dependent: :destroy
  has_many :invited_customer, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :mail, dependent: :destroy

  attr_writer :login
  def login
    @login || self.username || self.email
  end

  
end
