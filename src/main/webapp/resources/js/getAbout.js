function changeProfile(){

    $.ajax({
        url: "/profile/change",
        type: "POST",
        dataType: 'json',

        success: function(data){
            $('#upperBox').tmpl(data).appendTo('#userData');
        }
    })
}