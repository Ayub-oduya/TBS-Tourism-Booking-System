<script>
		$(document).ready(function(){
    	// Get value on keyup funtion
    	$("#datepicker1, #datepicker, #heads").keyup(function(){

    	var total=0;    	
    	var x = new Date($("#datepicker").val());
    	var y = new Date($("#datepicker1").val());
		var millisecondsDiff = y.getTime() - x.getTime()
    	var daysDiff = Math.round(
  millisecondsDiff / (24 * 60 * 60 * 60)
)  

    	$('#total').val(daysDiff);

    });
});
</script>