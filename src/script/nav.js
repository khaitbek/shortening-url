const headerOuter = document.querySelector(".header__outer")
const hamburger = document.querySelector(".hamburger")
hamburger.addEventListener("click",()=>{
    hamburger.toggleAttribute("toggleNav")
    headerOuter.classList.toggle("show")
})