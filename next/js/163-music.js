const Music163 = {
    init : function () {
        $(".g-btmbar .ply").on("click", function () {
            console.log("dd");
            console.log($(this).data("action"));
            $(this).play();
        });
    }
}
Music163.init();