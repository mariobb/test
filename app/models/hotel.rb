class Hotel < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3 }
end
