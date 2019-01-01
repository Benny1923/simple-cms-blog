var preview;
window.onload = () => {
     $.ajax({
         url: 'usercontent/preview.json',
         dataType: 'json',
         success: function(data){
             preview = data;
             $("#page").empty();
             preview.forEach(post => {
                 $("#page").prepend(`<div class="preview"><h1><a href="#${post.link}">${post.title}</a></h1><div>${post.preview}</div></div>`);
             });
         }
     });
}