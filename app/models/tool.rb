class Tool < ApplicationRecord
  has_many :rentals, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :condition, presence: true
  validates :user_id, presence: true
  validates :availability_status, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  validates :tech_specs, presence: true
  validates :parts_list, presence: true
  validates :category, presence: true
end
