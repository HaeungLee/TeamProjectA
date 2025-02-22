 //이미지 마우스 오버시 gif로 변경
 document.addEventListener('DOMContentLoaded', () => {
    const productCards = document.querySelectorAll('.product-card');

    productCards.forEach(card => {
        const img = card.querySelector('.product-image');
        const gifSrc = img.getAttribute('data-gif');
        
        card.addEventListener('mouseover', () => {
            img.src = gifSrc; // 이미지 URL을 GIF로 변경
        });

        card.addEventListener('mouseout', () => {
            img.src = img.getAttribute('data-original'); // 원래 이미지로 변경
        });

        img.setAttribute('data-original', img.src); // 원래 이미지 URL 저장
        });
    });