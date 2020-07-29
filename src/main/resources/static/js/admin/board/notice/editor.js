window.addEventListener("load", function(){

    let toolbar = document.querySelector(".toolbar");
    let boldBtn = toolbar.querySelector(".btn-bold");
    let italicBtn = toolbar.querySelector(".btn-italic");
    let underlineBtn = toolbar.querySelector(".btn-underline");
    let strikeBtn = toolbar.querySelector(".btn-strike");
    let leftBtn = toolbar.querySelector(".btn-text-left");
    let rightBtn = toolbar.querySelector(".btn-text-right");
    let centerBtn = toolbar.querySelector(".btn-text-center");
    let justifyBtn = toolbar.querySelector(".btn-text-justify");
    
    justifyBtn.onclick = (e)=>{
        e.preventDefault();
		document.execCommand("justifyFull");
    }

    centerBtn.onclick = (e)=>{
        e.preventDefault();
		document.execCommand("justifyCenter");
    }

    rightBtn.onclick = (e)=>{
        e.preventDefault();
		document.execCommand("justifyRight");
    }

    leftBtn.onclick = (e)=>{
        e.preventDefault();
		document.execCommand("justifyLeft");
    }

    strikeBtn.onclick = (e)=>{
    	e.preventDefault();
		document.execCommand("StrikeThrough");
    }

    underlineBtn.onclick = (e)=>{
    	e.preventDefault();
		document.execCommand("underline");
    }

    italicBtn.onclick = (e)=>{
    	e.preventDefault();
		document.execCommand("italic");
    }

    boldBtn.onclick = (e)=>{
    	e.preventDefault();
		document.execCommand("bold");
    }


});