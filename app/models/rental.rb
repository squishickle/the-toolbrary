class Rental < ApplicationRecord
  validates :tool_id, presence: true
  validates :user_id, presence: true
  validates :total_price, presence: true
  belongs_to :tool
  belongs_to :user
  # Custom validations to ensure booking dates don't clash
  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date

  # Check if a given interval overlaps this interval
  private

  # Ensure end_date occurs after start date
  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end

  # Method to test if dates overlap with other rentals
  # def no_overlaps
  #   rentals = Rental.where(["tool_id = ?", tool_id])
  #   if rentals.length > 0
  #     rentals.each do |rental|
  #       if start_date <= rental.end_date && rental.start_date <= end_date
  #         errors.add(:base, :date_overlaps, message: "booking date not available")
  #       end
  #     end
  #   end
  # end
end
