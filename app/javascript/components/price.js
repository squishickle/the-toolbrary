const changePrice = function() {
  const pricePerDay = parseInt(document.querySelector('em').innerText);
  const priceHTML = document.querySelector('.price-display')
  const startDateInput = document.getElementById('rental_start_date');
  const endDateInput = document.getElementById('rental_end_date');
  const priceCalc = document.getElementById('price-calc');
  const priceCalcValue = document.getElementById('price-calc-value');
  const serviceFee = document.getElementById('service-fee');
  const finalTotalPrice = document.getElementById('total-price');
  const priceTable = document.getElementById('price-table');

  // function that listens if date form input changes and edit's price
  const editPriceOnFormChange = (event) => {
    const endDate = Date.parse(endDateInput.value);
    const startDate = Date.parse(startDateInput.value);
    const days = (endDate - startDate) / (24 * 60 * 60 * 1000);
    const totalPrice = days * pricePerDay;
    if (totalPrice) {
      priceTable.style.display = "table";
      priceHTML.innerHTML = `Total: $${totalPrice}`;
      priceCalc.innerHTML = `$${pricePerDay * 0.97} x ${days} days`;
      priceCalcValue.innerHTML = `$${pricePerDay * 0.97 * days}`;
      serviceFee.innerHTML = `$${pricePerDay * 0.03 * days}`;
      finalTotalPrice.innerHTML = `$${totalPrice}`;
    }
  };
  // apply above function to event listeners endDateInput and startDateInput
  endDateInput.addEventListener('change', editPriceOnFormChange);
  startDateInput.addEventListener('change', editPriceOnFormChange);
};

export { changePrice }
