var resultList = document.getElementById('results');

if (resultList.childElementCount > 0) {
	document.getElementById("combsays").style.display = '';
	Materialize.showStaggeredList('#staggered-test');
}

	document.getElementById('runButton').addEventListener('mousedown', function() {
	document.getElementById("combsays").style.display = '';
	document.querySelector(".preloader-wrapper").style.display = '';

	var firstName = document.querySelector('form').first_name.value;
	var lastName = document.querySelector('form').last_name.value;
	var domain = document.querySelector('form').domain.value;
});
