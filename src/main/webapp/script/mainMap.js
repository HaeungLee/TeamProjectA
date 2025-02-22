function loadMap() {
    const map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 37.5665, lng: 126.9780}, // 서울
        zoom: 21
    });
}

document.addEventListener("DOMContentLoaded", function () {

const productCards = document.querySelectorAll('.product-card');

productCards.forEach(card => {
const makeRecipeLink = card.querySelector('.product-menu a:nth-child(1)'); // "만들어먹기" 링크
const findRestaurantLink = card.querySelector('.product-menu a:nth-child(2)'); // "주변 맛집 찾기" 링크

    findRestaurantLink.addEventListener('click', (event) => {
    event.preventDefault();
    const dishName = card.querySelector('.hidden-search').textContent; // 해당 요리명을 가져옴
    
    const googleMapsSearchUrl = `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(dishName)}`;
    window.open(googleMapsSearchUrl, '_blank');
});
});
initMap();
});
function initMap() {
loadMap();
}
