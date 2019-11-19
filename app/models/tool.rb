class Tool < ApplicationRecord
  has_many :rentals, dependent: :destroy
  belongs_to :user
end
