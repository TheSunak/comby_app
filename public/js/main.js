var button = document.getElementById('runButton');
var combyTable = document.getElementById('results');

if (combyTable.childNodes[1].childElementCount > 0) {
	document.getElementById("combsays").style.display = '';
}

button.addEventListener('click', function() {
	document.getElementById("combsays").style.display = '';

	while ( combyTable.childNodes[1].firstChild ) {
		 combyTable.childNodes[1].removeChild(combyTable.childNodes[1].firstChild);
	}

	if (combyTable.childNodes[1].childElementCount === 0) {
		document.querySelector(".preloader-wrapper").style.display = '';
	}
});
