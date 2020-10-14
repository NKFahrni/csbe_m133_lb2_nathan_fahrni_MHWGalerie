//const hamburger = document.getElementById("hamburger");
//const navUl =  document.getElementById("nav-ul");

//hamburger.addEventListener('click', () => {
//    navUl.classList.toggle('show');
//})

function myFunction(){
    var x = document.getElementById("mynav_bar")
    if (x.className === "nav_bar"){
        x.className += " responsive";
    }else {
        x.className = "nav_bar";
    }
}

