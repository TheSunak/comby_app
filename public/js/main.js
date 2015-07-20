var button = document.getElementById('runButton');
var combyTable = document.getElementById('results');

if (combyTable.childNodes[1].childElementCount > 0) {
	document.getElementById("combsays").style.display = '';
}

button.addEventListener('click', function() {

	while ( combyTable.childNodes[1].firstChild ) {
		 combyTable.childNodes[1].removeChild(combyTable.childNodes[1].firstChild);
	}

	var firstName = document.querySelector('form').first_name.value;
	var lastName = document.querySelector('form').last_name.value;
	var domain = document.querySelector('form').domain.value;

	if (firstName && lastName && domain ) {
		document.getElementById("combsays").style.display = '';
		document.querySelector(".preloader-wrapper").style.display = '';
	}
});
