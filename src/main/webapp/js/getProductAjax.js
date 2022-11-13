/**
 * MyProduct頁面由Ajax產生
 */
$(document).ready(function () {

    $('#loadTopData').click(function (){
            $('#tbody').empty();
            $('#pageNumber').empty();
            fetch("http://localhost:8080/Chezmoi/Back/MyProduct/Top").then(function(response){
                return response.json();
            }).then(function(array){
                $.each(array,function(index,value){
                    $('#tbody').append('<tr class="text-center">')
                    .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                    .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                    .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                    .append($('<td class="align-middle">').text(value.name))
                    .append($('<td class="align-middle">').text(value.color))
                    .append($('<td class="align-middle">').text(value.size))
                    .append($('<td class="align-middle">').text(value.price))
                    .append($('<td class="align-middle">').text(value.productState))
                    .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                    .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'"  onClick="return confirm(`確定要刪除此商品嗎?`);" ><i class="fa-solid fa-trash-can"></i></a></td>'))
                    .append($('</tr>'));
                })
            })
        }
    )
    
    $('#loadBottomData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/Bottom").then(function(response){
            return response.json();
        }).then(function(array){
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
            })
        })
    })
    
    $('#loadDressData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/Dress").then(function(response){
            return response.json();
        }).then(function(array){
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#loadOuterData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/Outer").then(function(response){
            return response.json();
        }).then(function(array){
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#loadAccData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/Accessories").then(function(response){
            return response.json();
        }).then(function(array){
          
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#stateOnData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/state/ON").then(function(response){
            return response.json();
        }).then(function(array){
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
                .append($('</tr>'));            
            })
        })
    })

    $('#stateOffData').click(function (){
        $('#tbody').empty();
        $('#pageNumber').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/state/OFF").then(function(response){
            return response.json();
        }).then(function(array){
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input class="" type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" href=""target="_blank">').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><i class="fa-regular fa-pen-to-square"></i></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><i class="fa-solid fa-trash-can"></i></a></td>'))
                .append($('</tr>'));            
            })
        })
    })
    
 });

