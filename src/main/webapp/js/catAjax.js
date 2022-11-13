// /*
// Shop Cat頁面由Ajax產生
//  */
// $(document).ready(function () {
//     // $('#loadTopProduct').click(function () {
//     Category = new URLSearchParams(window.location.href.substring(35));
//     console.log(Category);
//     $('#tbody').empty();
//     // $('#pageNumber').empty();
//
//
//         fetch("http://localhost:8080/Chezmoi/objListCat?category="+Category).then(function (response) {
//             return response.json();
//         }).then(function (array) {
//
//             $.each(array, function (index, value) {
//
//                 $('#tbody')
//                     .append('<div class="col-lg-3 col-md-6 col-sm-12 pb-1">'+
//                         '\n <div class="card product-item border-0 mb-4">'+
//                         '\n <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">' +
//                         '\n <img class="img-fluid w-300" src="http://localhost:8080/Chezmoi/getMainPic/' + value.photoId + '" ' +
//                         '\n style="height:278px; width:226px">' +
//                         '\n <div class="card-body border-left border-right text-center p-0 pt-4 pb-3"> ' +
//                         '\n <a href="http://localhost:8080/Chezmoi/shop/productDetail?series=' + value.series + '">' +
//                         '\n <h6 class="text-truncate mb-3">' + value.productName +
//                         '\n <div class="d-flex justify-content-center"> <h6 id="saleprice">' +'$'+ value.price + '</h6></div> </div>')
//
//             })
//
//         })
//     })
//
//
