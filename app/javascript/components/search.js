const hideTypedText = function() {
  console.log("hello");
  const typedText = document.querySelector('.typer-text');
  const searchBar = document.querySelector('.form-control');
  // apply above function to event listeners endDateInput and startDateInput
  searchBar.addEventListener('focus', (event) => {
    typedText.style.display = "none";
  });
};

export { hideTypedText }
