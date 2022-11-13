// /*
// Shop Cat頁面由Ajax產生
//  */
$(document).ready(function () {
    // $('#loadTopProduct').click(function () {
    // $('#sizeBody').empty();

         parametersSize=new URLSearchParams(window.location.search);
    fetch("http://localhost:8080/Chezmoi/distinctSize?"+parametersSize).then(function (response) {
        return response.json();
    }).then(function (array) {

        $.each(array, function (index, value) {

            $('#sizeBody')
                // .append('<span style="padding-right:15px ; font-weight:bold">size</span>')
                .append('<label style="padding-right:15px">' +
                    '\n <input type="radio" name="size" id="size" value="'+value.size+'"/>' +
                    '\n<span class="round button">'+value.size+'</span>')

        })

    })
})


