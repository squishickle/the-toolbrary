class Tool < ApplicationRecord
  has_many :rentals, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :user_id, presence: true
  validates :availability_status, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  validates :tech_specs, presence: true
  validates :parts_list, presence: true
  validates :category, presence: true
  mount_uploader :image, ImageUploader

  def unavailable_dates
    rentals.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
