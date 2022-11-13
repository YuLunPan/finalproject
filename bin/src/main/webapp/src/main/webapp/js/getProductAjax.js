/**
 * MyProduct頁面由Ajax產生
 */
$(document).ready(function () {
    
    $('#getAllProduct').click(function(){
        $('#tbody').empty();
        fetch("http://localhost:8080/Chezmoi/Back/MyProduct/all").then(function(response){
            return response.json();
        }).then(function(array){
            console.log(array);
            $.each(array,function(index,value){
                $('#tbody').append('<tr class="text-center">')
                .append($('<td><input type="checkbox" style="zoom:150%">'))
                .append($('<td class="align-middle"><img src="http://localhost:8080/Chezmoi/getMainPic/'+value.photo.photoId+'" style="width: 80px;height:auto">'))
                .append($('<td class="align-middle"><a class="a font-weight-medium" target="_blank" id="productId" ').text(value.productId))
                .append($('<td class="align-middle">').text(value.name))
                .append($('<td class="align-middle">').text(value.color))
                .append($('<td class="align-middle">').text(value.size))
                .append($('<td class="align-middle">').text(value.price))
                .append($('<td class="align-middle">').text(value.productState))
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'"  onClick="return confirm(`確定要刪除此商品嗎?`);" ><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));  
            })
        })  
    });
    
    $('#loadTopData').click(function (){
            $('#tbody').empty();
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
                    .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                    .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'"  onClick="return confirm(`確定要刪除此商品嗎?`);" ><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                    .append($('</tr>'));
                })
            })
        }
    )
    
    $('#loadBottomData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
            })
        })
    })
    
    $('#loadDressData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#loadOuterData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#loadAccData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));
            })
        })
    })

    $('#stateOnData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));            
            })
        })
    })

    $('#stateOffData').click(function (){
        $('#tbody').empty();
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
                .append($('<td class="align-middle"><a href="MyProduct/edit/'+value.productId+'"><button class="btn btn-sm btn-primary">修改</button></a></td>'))
                .append($('<td class="align-middle"><a id="remove" href="MyProduct/delete/'+value.productId+'" onClick="return confirm(`確定要刪除此商品嗎?`);"><button class="btn btn-sm btn-primary">刪除</button></a></td>'))
                .append($('</tr>'));            
            })
        })
    })
    
 });

