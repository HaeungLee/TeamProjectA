document.addEventListener('DOMContentLoaded', function () {
            let viewCountElement = document.getElementById('viewCount');
            let viewCount = localStorage.getItem('viewCount') || 0;
            viewCountElement.textContent = `조회수: ${viewCount}`;

            // 로그인 체크
            const isLoggedIn = false; // 실제 로그인 상태 확인 방법에 따라 변경

            const commentForm = document.getElementById('commentForm');
            if (!isLoggedIn) {
                commentForm.innerHTML = '<p>로그인 후 댓글을 남길 수 있습니다.</p>';
            }
        });