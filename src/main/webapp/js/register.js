// 姓名
// 只能輸入中文

function checkChName(el) {
    el.addEventListener('input', e => {
        setTimeout(() => {
            return e.target.value = e.target.value.replace(/[a-zA-Z0-9]|[ws]|[!#$€£%&'"`()*+-./:：;；…,，。「」【】=<>?@{}^|[]]/g, '')
        }, 0)
    }, false);
}


const jsName = document.getElementById('name');
checkChName(jsName);

// 生日
// $(function () {
//     $('#birthday').datepicker({
//         theme: 'default',
//         changeMonth: true,
//         changeYear: true,
//         date: null,
//         dateFormat: "yy-mm-dd",
//         maxDate: 0,
//         minDate: '-50Y',
//         beforeShow: function () {
//             $("#birthday").css('font-size', 4)
//         }
//     });
// });
//$('#birthday').datetimepicker({
//    date: null,
//    format: 'YYYY-MM-DD',
//    locale: moment.locale('zh-tw'),
//    minDate: moment().add(-99999, 'days'), //顯示最小天數
//    maxDate: moment().add(0, 'days'), //顯示最大天數，30為最大的顯示範圍為一個月為限
//});
