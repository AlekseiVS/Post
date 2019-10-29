window.onload=function(){
    $('.test').click(function() {
        const id = ($(this).attr('id'));
        $.ajax({
            type: "POST",
            url: "/post/data-post",
            data: { id },
            success  : function(data) {
                $('.modal-title').empty();
                $('.modal-body').empty();
                $('.modal-title').append(data.title);
                $('.modal-body').append(data.text);
                $('#myModal').modal('show');
            },
        });

    });
};