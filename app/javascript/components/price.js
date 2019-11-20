const changePrice = function() {
  const pricePerDay = parseInt(document.querySelector('em').innerText);
  const priceHTML = document.querySelector('.price-display')
  const startDateInput = document.getElementById('rental_start_date');
  const endDateInput = document.getElementById('rental_end_date');

  endDateInput.addEventListener('change', (event) => {
    const endDate = Date.parse(endDateInput.value);
    const startDate = Date.parse(startDateInput.value);
    const days = (endDate - startDate) / (24 * 60 * 60 * 1000);
    const totalPrice = days * pricePerDay;
    priceHTML.innerHTML = `$${totalPrice} for ${days} days`
  });
};

export { changePrice }
