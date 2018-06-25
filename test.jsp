<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<input type="button" value="Ajax Call" onclick="ajaxMethod();" />

<script>

function ajaxMethod(){
		
		$.ajax({
			type: 'GET',
			url:  'https://cap-sg-prd-1.integration.ibmcloud.com:18020/orchestrator/api/actions/resetear/portal',
			cache:false,
			async:true,
			error: function(){
						alert('error');
				   },		
			dataType : "html",
			data :{
				name:"hello123"
				},
			success: function(htmlData) {			
				alert('response : ' + htmlData);
			},
			complete: function(){
			}
		});
}

</script>