window.addEventListener("load",()=>{

    let mainSection = document.querySelector(".main");
    let contentSection = mainSection.querySelector(".content-container");
    let titleInput = contentSection.querySelector("input[name='title']");
    let content = contentSection.querySelector(".content");
    let pubInput = contentSection.querySelector("input[name='pub']");
    let submitBtn = mainSection.querySelector("input[type='submit']");

    submitBtn.addEventListener("click",(e)=>{

        if(titleInput.value == "") {
            alert("제목을 입력해주세요.");
            return;
        }

        if(pubInput.checked)
        	pubInput.value = true;
        else
        	pubInput.value = false;
        
        var xhr = new XMLHttpRequest();
        xhr.open('POST','reg', true);
        xhr.setRequestHeader("content-type","application/json");        
        
        xhr.onload = function(){
            //window.location.href = "list";
        }
        
        var json = {title: titleInput.value, content: content.value, pub: pubInput.value};
        
        var data = JSON.stringify(json);
        xhr.send(data);
        
    });

})