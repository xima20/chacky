class Participant < ApplicationRecord
    belongs_to :customer
    belongs_to :ivent
end
