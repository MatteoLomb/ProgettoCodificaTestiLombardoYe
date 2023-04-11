$(document).ready(function() {
   $(".btnHide").css("display", "none");
});

function showTerm(){
	$(".termini").css("color", "red");
	
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
	$(".orig").css("color", "#f400a1");
	$(".orig").css("cursor", "pointer");
	$(".sic").css("color", "#f400a1");
	$(".sic").css("cursor", "pointer");
	
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
	$(".termini").css("color", "black");
	
	$(".btnHideTerm").css("display", "none");
	$(".btnTerm").css("display", "block");
}

function hideAbbr(){
	$(".abbreviazioni").css("color", "black");
	
	$(".btnHideAbbr").css("display", "none");
	$(".btnAbbr").css("display", "block");
}

function hideCorr(){
	$(".orig").css("color", "black");
	
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


let origs = document.getElementsByClassName('orig')

for (let orig of origs) {
    let reg = orig.nextElementSibling;
    reg.style.display = 'none'
    reg.addEventListener('click',
    function() {
        reg.style.display = 'none'
        orig.style.display = 'inline-block'
    })

    orig.addEventListener('click',
    function() {
        orig.style.display = 'none' 
        reg.style.display = 'inline-block'
    })
}


let sics = document.getElementsByClassName('sic')
for (let sic of sics) {
    let corr = sic.nextElementSibling;
    corr.style.display = 'none'
    corr.addEventListener('click',
    function() {
        corr.style.display = 'none'
        sic.style.display = 'inline-block'
    })

    sic.addEventListener('click',
    function() {
        sic.style.display = 'none' 
        corr.style.display = 'inline-block'
    })
}
