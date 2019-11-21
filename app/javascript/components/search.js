const hideTypedText = function() {
  console.log("hello");
  const typedText = document.querySelector('.typer');
  const searchBar = document.querySelector('.form-control');
  // apply above function to event listeners endDateInput and startDateInput
  searchBar.addEventListener('focus', (event) => {
    console.log("hello");
    typedText.style.display = "none";
  });
};

export { hideTypedText }
