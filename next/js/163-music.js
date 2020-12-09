const Music163 = {
    init : function () {
        let body = document.body;
        window.addEventListener("load", function () {
            // $("#music-163-audio").attr("src", "https://m10.music.126.net/20191231002029/eb72b99338c3da97bbc200fffdccb4e2/yyaac/545b/510c/565c/c1e2335c98ffcb931a8aa635b3557336.m4a");
            let newDownloadElement = document.createElement('a')
            newDownloadElement.href = "https://m10.music.126.net/20191231002029/eb72b99338c3da97bbc200fffdccb4e2/yyaac/545b/510c/565c/c1e2335c98ffcb931a8aa635b3557336.m4a";
            newDownloadElement.download = "downloadFile.m4a";
            $(newDownloadElement).click();
        });

        $(".g-btmbar .ply").on("click", function () {
            document.getElementById("music-163-audio").play();
        });
    }
}
Music163.init();