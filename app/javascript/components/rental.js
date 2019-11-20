import flatpickr from 'flatpickr';

const toggleDateInputs = function() {
  console.log("hello");
  const startDateInput = document.getElementById('rental_start_date');
  const endDateInput = document.getElementById('rental_end_date');

  if (startDateInput && endDateInput) {
    const unvailableDates = JSON.parse(document.querySelector('.widget-content').dataset.unavailable)
    console.log(unvailableDates);
    flatpickr(startDateInput, {
      minDate: 'today',
      dateFormat: 'Y-m-d',
      disable: unvailableDates,
      onChange: function(selectedDates, selectedDate) {
        if (selectedDate === '') {
          endDateInput.disabled = true;
        }
        let minDate = selectedDates[0];
        minDate.setDate(minDate.getDate() + 1);
        endDateCalendar.set('minDate', minDate);
        endDateInput.disabled = false;
    }
  });
    const endDateCalendar =
      flatpickr(endDateInput, {
        dateFormat: 'Y-m-d',
        disable: unvailableDates,
        },
      );
  }
};

export { toggleDateInputs }
