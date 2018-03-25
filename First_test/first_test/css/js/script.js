<script type="text/javascript">
		$(document).ready(function(){
		$(".reponse").hide();
		$("a").click(function(){
			$(this).parent().next().slideToggle().css("color", "blue");
			if($(this).html() == "cacher")
			{
				$(this).html("voir");
			}else
			{
				$(this).html("cacher");
			}
		});
		});
		</script>