﻿// add hovered class to selected list item 
//let list = document.querySelectorAll(".navigation li");

//function activelink() {
//    list.forEach(item => {
//        item.classList.remove("hovered");
//    });
//    this.classList.add("hovered");
//}
//list.forEach((item) => item.addEventListener("mouseover", activelink));

// Menu toggle
let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let main = document.querySelector(".main");

toggle.onclick = function () {
    navigation.classList.toggle("active");
    main.classList.toggle("active");
};