/*
 Shop Detail頁面的Color由Ajax產生
 */
$(document).ready(function () {
    // $('#loadTopProduct').click(function () {
    // $('#sizeBody').empty();

    parametersColor=new URLSearchParams(window.location.search);
    fetch("http://localhost:8080/Chezmoi/distinctColor?"+parametersColor).then(function (response) {
        return response.json();
    }).then(function (array) {
        console.log((array));
        $.each(array, function (index, value) {

            $('#colorBody')
                // .append('<span style="padding-right:15px ; font-weight:bold">size</span>')
                .append('<label style="padding-right:15px">' +
                    '\n <input type="radio" name="color" id="color" value="'+value.color+'"/>' +
                    '\n<span class="round button">'+value.color+'</span>')

        })

    })
})