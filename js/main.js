var preview;
window.onload = () => {
     $.ajax({
         url: 'usercontent/preview.json',
         dataType: 'json',
         success: function(data){
             preview = data;
         }
     });
}