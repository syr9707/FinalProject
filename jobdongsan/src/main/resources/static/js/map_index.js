/**
 * 
 */
 
$(document).ready(function(){
 
     $('#map_img_tap').hover(
        function(){
            $(this).addClass('animate__animated animate__pulse');
        },
        function(){
            $(this).removeClass('animate__animated animate__pulse');
        }
    );
    
    
    const mapSeoul = document.querySelector('#CD11');
	const listSeoul = document.querySelector('#list_seoul');

	let isHidden = true;

	mapSeoul.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listSeoul.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listSeoul.style.display = 'none';
		}
	});
 
 });
 
 
 $(document).ready(function(){
 
 	const mapGangwondo = document.querySelector('#CD42');
	const listGangwondo = document.querySelector('#list_gangwondo');

	let isHidden = true;

	mapGangwondo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listGangwondo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listGangwondo.style.display = 'none';
		}
	}); 
 
  });