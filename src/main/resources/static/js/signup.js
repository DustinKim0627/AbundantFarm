$(()=>{
    let html = $("html");
    const divisionList = $(".division-list");
    let divRadioes = divisionList.find("input[name=div]");
    let businessRadio = divisionList.find(".business-radio");
    let businessRow = $(".business-row");

    let upButton = $(".up-button");

    divRadioes.click(e=>{
        if(businessRadio.prop("checked"))
            businessRow.removeClass("d-none");
        else
            businessRow.addClass("d-none");
    });

    $(window).scroll(e=>{
        if(html.prop("scrollTop")==0)
            upButton.addClass("d-none");
        else
            upButton.removeClass("d-none");
    })

    upButton.click(e=>{
       html.animate({
           scrollTop : 0
       },200);
    });

});