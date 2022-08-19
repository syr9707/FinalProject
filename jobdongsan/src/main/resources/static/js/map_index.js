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
});



$(document).ready(function(){
 
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



$(document).ready(function(){
 
 	const mapGyeonggido = document.querySelector('#CD41');
	const listGyeonggido = document.querySelector('#list_gyeonggido');

	let isHidden = true;

	mapGyeonggido.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listGyeonggido.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listGyeonggido.style.display = 'none';
		}
	});
 });
 
 
 
 $(document).ready(function(){
 
 	const mapChungcheongnamdo = document.querySelector('#CD44');
	const listChungcheongnamdo = document.querySelector('#list_chungcheongnamdo');

	let isHidden = true;

	mapChungcheongnamdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listChungcheongnamdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listChungcheongnamdo.style.display = 'none';
		}
	});
});



 $(document).ready(function(){
 
 	const mapChungcheongbukdo = document.querySelector('#CD43');
	const listChungcheongbukdo = document.querySelector('#list_chungcheongbukdo');

	let isHidden = true;

	mapChungcheongbukdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listChungcheongbukdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listChungcheongbukdo.style.display = 'none';
		}
	});
});



 $(document).ready(function(){
 
 	const mapJeollabukdo = document.querySelector('#CD45');
	const listJeollabukdo = document.querySelector('#list_jeollabukdo');

	let isHidden = true;

	mapJeollabukdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listJeollabukdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listJeollabukdo.style.display = 'none';
		}
	});
});



 $(document).ready(function(){
 
 	const mapJeollanamdo = document.querySelector('#CD46');
	const listJeollanamdo = document.querySelector('#list_jeollanamdo');

	let isHidden = true;

	mapJeollanamdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listJeollanamdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listJeollanamdo.style.display = 'none';
		}
	});
});



 $(document).ready(function(){
 
 	const mapGyeongsangbukdo = document.querySelector('#CD47');
	const listGyeongsangbukdo = document.querySelector('#list_gyeongsangbukdo');

	let isHidden = true;

	mapGyeongsangbukdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listGyeongsangbukdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listGyeongsangbukdo.style.display = 'none';
		}
	});
});



 $(document).ready(function(){
 
 	const mapGyeongsangnamdo = document.querySelector('#CD48');
	const listGyeongsangnamdo = document.querySelector('#list_gyeongsangnamdo');

	let isHidden = true;

	mapGyeongsangnamdo.addEventListener('click', () => {
		if (isHidden) {
			// 안보일 때
			isHidden = false;
			listGyeongsangnamdo.style.display = 'block';
		} else {
			// 보일 때
			isHidden = true;
			listGyeongsangnamdo.style.display = 'none';
		}
	});
});