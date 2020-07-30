$(document).ready(function(){
    $(".main-CATS").click(e=>{
        let idData = $(e.target).data("id");
        $.ajax({
            type: "get",
            url : `/api/category/sub-categories?sup=${idData}`,
            async:"true",
            success : function(subCAT) {
                console.log(subCAT);
                var sub = subCAT;
                $(".sub-CAT").children("li").remove();
                    for(var i of sub){
                       $(".sub-CAT").append(`<li class="sub-CAT-List">${i.name } <input class="${i.name}" type="checkbox" name="categoryId" value="${i.id}"></input></li>`)
                    };
                    // <input class="d-none" type="checkbox" name="categoryId" value="${sub.id}"></input>

                    $(".sub-CAT-List").click(function(e){
                        $("input[type='checkbox']").prop("checked",false);
                        let result = $(e.target).text();
                        $(`input:checkbox[class=${result}]`).prop("checked", true);
                        console.log(result);
                       
                    });
                }
        });
    });
});