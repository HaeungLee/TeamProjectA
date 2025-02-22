
document.addEventListener('DOMContentLoaded', function() {
    const likeButtons = document.querySelectorAll('.like-button');
    
    // 좋아요 버튼 클릭 이벤트 리스너 등록
    likeButtons.forEach(button => {
        button.addEventListener('click', function() {
        const card = this.closest('.product-card');
        const countElement = this.querySelector('.like-count');
        let count = parseInt(countElement.textContent);
        
        if (card.classList.contains('liked')) {
            // 좋아요 취소
            count--;
            card.classList.remove('liked');
        } else {
            // 좋아요 추가
            count++;
            card.classList.add('liked');
        }
        
        countElement.textContent = count;
        
        // 여기에 서버로 데이터를 전송하는 AJAX 요청을 추가..(가능하면)
        // 예: fetch('/api/like', { method: 'POST', body: JSON.stringify({ id }) })
        });
    });
    });