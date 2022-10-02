document.querySelector(".btn-join").addEventListener("click",function(){
    document.querySelector(".popup").classList.add("active");
});

document.querySelector(".popup .close-btn").addEventListener("click",function(){
    document.querySelector(".popup").classList.remove("active");
});

document.querySelector(".btn-learnjava").addEventListener("click",function(){
    loadPage("learnjava.html");
});
