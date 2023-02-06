$(document).ready(function() {
   $(".btnHide").css("display", "none");
});

function showTerm(){
	$(".elemTerm").css("color", "red");
	
	$(".btnHideTerm").css("display", "block");
	$(".btnTerm").css("display", "none");
 }

function showAbbr(){
	$(".abbreviazioni").css("color", "#8F00ff");
	$(".abbreviazioni").css("cursor", "pointer");
	
	$(".btnHideAbbr").css("display", "block");
	$(".btnAbbr").css("display", "none");
}

function showCorr(){
	$(".choice").css("color", "#f400a1");
	$(".choice").css("cursor", "pointer");
	
	$(".btnHideCorr").css("display", "block");
	$(".btnCorr").css("display", "none");
}
function showParStra(){
	$(".paroleStraniere").css("color", "#007fff");
	
	$(".btnHideParStra").css("display", "block");
	$(".btnParStra").css("display", "none");
}
function showDel(){
	$(".del").css("color", "green");
	$(".gap").css("color", "green");
	$(".btnHideDel").css("display", "block");
	$(".btnDel").css("display", "none");
}

function hideTerm(){
	$(".elemTerm").css("color", "black");
	
	$(".btnHideTerm").css("display", "none");
	$(".btnTerm").css("display", "block");
}

function hideAbbr(){
	$(".abbreviazioni").css("color", "black");
	
	$(".btnHideAbbr").css("display", "none");
	$(".btnAbbr").css("display", "block");
}

function hideCorr(){
	$(".choice").css("color", "black");
	
	$(".btnHideCorr").css("display", "none");
	$(".btnCorr").css("display", "block");
}
function hideParStra(){
	$(".paroleStraniere").css("color", "black");
	
	$(".btnHideParStra").css("display", "none");
	$(".btnParStra").css("display", "block");
}
function hideDel(){
	$(".del").css("color", "black");
	$(".gap").css("color", "black");
	$(".btnHideDel").css("display", "none");
	$(".btnDel").css("display", "block");
}
	
	
let abbreviazioni = document.getElementsByClassName('abbreviazioni')

for (let abbreviazione of abbreviazioni) {
    let espansione = abbreviazione.nextElementSibling;
    espansione.style.display = 'none'
    espansione.addEventListener('click',
    function() {
        espansione.style.display = 'none'
        abbreviazione.style.display = 'inline-block'
    })

    abbreviazione.addEventListener('click',
    function() {
        abbreviazione.style.display = 'none' 
        espansione.style.display = 'inline-block'
    })
}

let choices = document.getElementsByClassName('choice')
for (let choice of choices) {
    choice.firstElementChild.addEventListener('click',
    function() {
        choice.firstElementChild.style.display = 'none'
        choice.lastChild.style.display = 'inline-block'  
    })

    choice.lastChild.addEventListener('click',
    function() {
        choice.lastChild.style.display = 'none'  
        choice.firstElementChild.style.display = 'inline-block'
    })
}