/**
 *, 
 */
$(document).ready(function(){
  // JavaScript를 사용하여 value 속성 값을 변경
  $(".regionClass").click(function(){
		var regionId = $(this).attr("id")
		var region = $(this).data('region');
		var regionVal = document.getElementById("regionInput")
		if(regionId === "seoulBtn"){
			regionVal.value = region
		}
		else if(regionId === "busanBtn"){
			regionVal.value = region
		}
		else if(regionId === "daeguBtn"){
			regionVal.value = region
		}
		else if(regionId === "incheonBtn"){
			regionVal.value = region
		}
		else if(regionId === "gwangjuBtn"){
			regionVal.value = region
		}
		else if(regionId === "daejeonBtn"){
			regionVal.value = region
		}
		else if(regionId === "ulsanBtn"){
			regionVal.value = region
		}
		else if(regionId === "sejongBtn"){
			regionVal.value = region
		}
		else if(regionId === "gyeonggiBtn"){
			regionVal.value = region
		}
		else if(regionId === "gangwonBtn"){
			regionVal.value = region
		}
		else if(regionId === "chongbukBtn"){
			regionVal.value = region
		}
		else if(regionId === "chongnamBtn"){
			regionVal.value = region
		}
		else if(regionId === "jeonbukBtn"){
			regionVal.value = region
		}
		else if(regionId === "jeonnamBtn"){
			regionVal.value = region
		}
		else if(regionId === "gyongbukBtn"){
			regionVal.value = region
		}
		else if(regionId === "gyongnamBtn"){
			regionVal.value = region
		}
		else if(regionId === "jejuBtn"){
			regionVal.value = region
		}
  })
});