$(document).ready(function() {
    
  

   $('#datePicker')
        .datepicker({
            format: 'mm/dd/yyyy',
            autoclose: true  
        });
        $('#datePicker1')
        .datepicker({
            format: 'mm/dd/yyyy',
            autoclose: true  
        });
   $('.nameofinstructor').hide();
   
    
    
    $('#typeoftraining').change(function(){
        var temp=$(this).val();
        if(temp=="Seminar"){
            $('.nameofinstructor').show();
            $('#nameoftrainer').attr("value","");
            $('#hoursoftraining').attr("value","");
            $('#hoursoftraining').attr("required","");
            $('#nameoftrainer').attr("required","");
            
        }
        else{
             $('.nameofinstructor').hide();
            $('#nameoftrainer').attr("value","None");
            $('#hoursoftraining').attr("value","NA");
            $('#hoursoftraining').removeAttr("required");
             $('#nameoftrainer').removeAttr("required");
             
        }
    });
   
 
  $('#anchorbutton').hide();
  
  $('#downloadbutton').click(function(){
      $('#downloadbutton').hide();
      $('#anchorbutton').show();
    });
   
   $('#submitButton').click(function(){
    var displaye=0;
       displaye++; 
        if(displaye==0){
        $('#drought').show();
    }
    else{
       $('#drought').hide(); 
    }
    }); 
   
 $('#sortable').dataTable();
});

