class Ivent < ApplicationRecord
    belongs_to :customer
    has_many :participant, dependent: :destroy
    has_many :invited_customer, dependent: :destroy
    has_many :comment, dependent: :destroy
end
