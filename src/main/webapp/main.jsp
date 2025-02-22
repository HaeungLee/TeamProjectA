<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <title>레시피를 부탁해</title>
    <script src="https://maps.googleapis.com/maps/api/js?key=${data.apikey}&callback=loadMap" async defer></script>
</head>
<body>
<%@ include file="./header.jsp" %>
    <main>
        <div class="ad-container">
            <div class="slide-box">
                <img src="../img/adv.png" alt="광고이미지1">
                <img src="../img/adv2.jpg" alt="광고이미지2">
                <img src="../img/adv3.jpg" alt="광고이미지3">
            </div>
            <div class="slide-buttons">
                <button class="slide-prev">&lt;</button>
                <button class="slide-next">&gt;</button>
            </div>
        </div>
        <section class="main-section">
            <h2 class="section-title"><a=href>가장 많이 찾아 본 레시피</a></h2>
            <div class="product-grid">
                <div class="product-card">
                    <img src="../img/fishdump.jpg" alt="상품1" class="product-image" data-gif="../img/movingimg1.gif">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 29.6">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">피시 앤 만두</h3>
                        <span class="hidden-search">만두</span>
                        <p class="product-price">[253회] 오세득</p>
                    </div>
                    <div class="product-menu">
                        <a href="view/info/recipeinfo1.jsp" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
                <div class="product-card">
                    <img src="../img/pigstew.jpg" alt="상품2" class="product-image" data-gif="../img/movingimg2.gif">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 30">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">돼지가 스튜에 빠진 날</h3>
                        <span class="hidden-search">돼지고기</span>
                        <p class="product-price">[252회] 샘킴</p>
                    </div>
                    <div class="product-menu">
                        <a href="view/info/recipeinfo2.html" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
                <div class="product-card">
                    <img src="../img/Donkatsu.jpg" alt="상품3" class="product-image" data-gif="../img/movingimg3.gif">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 29.6">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">이연복Go 연복Go♬</h3>
                        <span class="hidden-search">돈가스</span>
                        <p class="product-price">[251회] 이연복</p>
                    </div>
                    <div class="product-menu">
                        <a href="view/info/recipeinfo3.html" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
            </div>
        </section>

        <section class="main-section">
            <h2 class="section-title">제철 추천메뉴</h2>
            <div class="product-grid">
                <div class="product-card">
                    <img src="../img/product1.png" alt="특가상품1">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 29.6">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">돼지고기 김치찌개</h3>
                        <p class="product-price">15,900원</p>
                    </div>
                    <div class="product-menu">
                        <a href="#" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
                <div class="product-card">
                    <img src="../img/product2.png" alt="특가상품2">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 29.6">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">매콤한 쭈꾸미 볶음</h3>
                        <p class="product-price">12,900원</p>
                    </div>
                    <div class="product-menu">
                        <a href="#" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
                <div class="product-card">
                    <img src="../img/product3.png" alt="특가상품3">
                    <div class="like-button">
                        <svg class="heart" viewBox="0 0 32 29.6">
                          <path d="M23.6,0c-3.4,0-6.3,2.7-7.6,5.6C14.7,2.7,11.8,0,8.4,0C3.8,0,0,3.8,0,8.4c0,9.4,9.5,11.9,16,21.2
                            c6.1-9.3,16-12.1,16-21.2C32,3.8,28.2,0,23.6,0z"/>
                        </svg>
                        <span class="like-count">0</span>
                      </div>
                    <div class="product-info">
                        <h3 class="product-title">수제 크림 파스타</h3>
                        <p class="product-price">16,900원</p>
                    </div>
                    <div class="product-menu">
                        <a href="#" class="make-recipe">만들어먹기</a>
                        <a href="#" class="find-restaurant">주변 맛집 찾기</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="./footer.jsp" %>
    <script src="script/maingif.js"></script>
    <script src="script/mainLike.js"></script>
    <script src="script/mainSlide.js"></script>
    <script src="script/mainMap.js"></script>
</body>
</html>