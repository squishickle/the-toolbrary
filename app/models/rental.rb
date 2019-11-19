class Rental < ApplicationRecord
  validate :no_overlaps
  validates :tool_id, presence: true
  validates :user_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  belongs_to :tool
  belongs_to :user

  # Check if a given interval overlaps this interval
  private

  def no_overlaps
    rentals = Rental.where(["tool_id = ?", tool_id])
    if rentals.length > 0
      rentals.each do |rental|
        if start_date <= rental.end_date && rental.start_date <= end_date
          errors.add(:base, :date_overlaps, message: "booking date not available")
        end
      end
    end
  end
end
