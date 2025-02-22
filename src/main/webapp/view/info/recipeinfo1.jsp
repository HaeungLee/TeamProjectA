<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/main.css">
<link rel="stylesheet" type="text/css" href="../../css/recipeinfo.css">
<title>Insert title here</title>

 	<script>
 		document.addEventListener('DOMContentLoaded', function () {
        // 조회수 업데이트
        let viewCountElement = document.getElementById('viewCount');
        let viewCount = localStorage.getItem('viewCount') || 0;
        viewCountElement.textContent = `조회수: ${viewCount}`;
                
	 	fetch('checkLoginStatus')
	    .then(response => response.json())
	    .then(data => {
	        const isLoggedIn = data.isLoggedIn;
	        const commentForm = document.getElementById('commentForm');
	        const topHeader = document.querySelector('.top-header .container');
	
	        if (isLoggedIn) {
	            topHeader.innerHTML = `
	                <a href="logout.html">로그아웃</a>
	                <a href="#">고객센터</a>
	            `;
	            commentForm.innerHTML = `
	                <label for="rating">별점:</label>
	                <select id="rating" name="rating">
	                    <option value="5">★★★★★</option>
	                    <option value="4">★★★★</option>
	                    <option value="3">★★★</option>
	                    <option value="2">★★</option>
	                    <option value="1">★</option>
	                </select>
	                <br>
	                <label for="comment">댓글:</label>
	                <textarea id="comment" name="comment" rows="4" cols="50"></textarea>
	                <br>
	                <button type="submit">댓글 남기기</button>
	            `;
	        } else {
	            commentForm.innerHTML = '<p>로그인 후 댓글을 남길 수 있습니다.</p>';
	        }
	    })
	    .catch(error => console.error('Error:', error));
});
</script>
</head>
<body>
<%@ include file="../header.jsp"%>
   
	<main>
		 <div class="content-container">
	 		<h3>[253회] 오세득 - 피시 앤 만두</h3>
			<hr>
        	<p>2019-11-19 오후 8:09:48 조회 <span id="viewCount">0</span>
			<hr>
            <img src="../img/fishdump.jpg" alt="레시피 이미지">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/x3nWr3xwbi0?si=sYN6wtIXeINWkuA_" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <div class="ingredients">
                <h4>재료</h4>
                    <p>조기, 가자미, 자숙새우, 부추, 김, 굴소스, 표고버섯, 파김치, 양파, 밀가루, 대파, 마요네즈, 다진 생강, 고춧가루, 다진 마늘, 참기름, 간장, 식초, 홍고추, 고추, 설탕</p>
            </div>
            <div class="instructions">
                <h4>요리 순서</h4>
                <p>1. 양파를 얇게 슬라이스한다.</p>
                <p>2. 핸드블렌더에 밀가루, 뜨거운 물을 넣고 갈아 만두피 반죽을 만든다.</p>
                <p>3. 조기, 가자미를 손질해 몸통 살만 분리한 뒤 기름에 튀긴다.</p>
                <p>4. 끓는 기름에 대파를 넣는다.</p>
                <p>5. 지퍼백에 자숙새우를 넣은 뒤 고기망치로 으깬다.</p>
                <p>6. 핸드블렌더에 튀긴 생선, 으깬 새우, 김, 마요네즈를 넣고 갈아 만두소를 만든다.</p>
                <p>7. 만두소에 다진 파김치, 생강즙을 넣고 버무린다.</p>
                <p>8. 밀가루 위에 만두피 반죽을 올린 뒤 밀대로 넓게 민다.</p>
                <p>9. 만두피에 만두소를 넣어 만두를 빚는다.</p>
                <p>10. 기름을 두른 팬에 만두를 굽다가 물을 넣고 뚜껑을 닫는다.</p>
                <p>11. 부추, 양파, 표고버섯을 먹기 좋은 크기로 썬다.</p>
                <p>12. 대파를 넣은 기름에 고춧가루를 넣어 고추기름을 낸다.</p>
                <p>13. 기름을 두른 팬에 양파, 표고버섯, 다진마늘, 굴소스, 부추, 참기름을 넣고 볶는다.</p>
                <p>14. 볼에 간장, 식초를 넣는다.</p>
                <p>15. 볼에 설탕을 추가한 뒤 홍고추, 고추를 썬다.</p>
          		<p>16. 썬 홍고추, 고추, 양파와 간장소스를 지퍼백에 넣어 섞는다.</p>
          		<p>17. 구운 만두를 부추볶음 위에 올린다.</p>
          		<p>18. 만두 위에 양파무침을 올린 뒤 고추기름을 뿌린다.</p>
            </div>
            <div class="rating-comments">
                <h4>별점 및 댓글</h4>
                <form id="commentForm">
                </form>
            </div>
        </div>
    </main>
</body>
</html>