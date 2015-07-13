function getAbout(){

    $.ajax({
        url: "about",
        type: "POST",
        dataType: 'json',

        success: function(data){
            $('#getAbout').tmpl(data).appendTo('#about');
            getRegion();
        }
    })
}