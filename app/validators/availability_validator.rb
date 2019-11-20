class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    rentals = Rental.where(["tool_id =?", record.tool_id])
    date_ranges = rentals.map { |r| r.start_date..r.end_date }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
