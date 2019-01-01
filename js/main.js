/* main.js by benny1923 for simple-spa-blog
   created: 2019-01-01
   *pray for my final report*
*/
var preview;
window.onload = () => {
     $.ajax({
         url: 'usercontent/preview.json',
         dataType: 'json',
         success: function(data){
             preview = data;
             $("#page").empty();
             $("#news").empty();
             preview.forEach(post => {
                 $("#page").prepend(`<div class="preview"><h1><a href="#${post.link}">${post.title}</a></h1><div>${post.preview}</div></div>`);
                 $('#news').prepend(`<p><a href="#${post.link}">${post.title} - ${post.date}</a></p>`);
             });
         }
     });
}

$(window).on('hashchange', function(){
    try {
        switch (window.location.hash.substr(1)) {
            case '':
            case 'home':
                $("#page").empty();
                preview.forEach(post => {
                    $("#page").prepend(`<div class="preview"><h1><a href="#${post.link}">${post.title}</a></h1><div>${post.preview}</div></div>`);
                });
                break;
            case 'about':
                $.ajax({
                    url: 'usercontent/about.html',
                    dataType: 'html',
                    success: function (data) {
                        $("#page").empty();
                        $("#page").prepend(data);
                    }
                })
                break;
            default:
                $.ajax({
                    url: 'usercontent/post/' + window.location.hash.substr(1) + '.html',
                    dataType: 'html',
                    success: function (data) {
                        $("#page").empty();
                        $("#page").prepend(data);
                    }
                })
                break;
        }
    } catch (error) {
        
    }
})