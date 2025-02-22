

            const slideBox = document.querySelector('.slide-box');
            const slidePrevButton = document.querySelector('.slide-prev');
            const slideNextButton = document.querySelector('.slide-next');
            const slideImages = document.querySelectorAll('.slide-box img'); 
            let currentPosition = 0;
            let intervalId;

            function slide() {
                slideBox.style.transform = `translateX(-${currentPosition * 100}%)`;
            }

            slidePrevButton.addEventListener('click', () => {
                currentPosition--;
                if (currentPosition < 0) {
                    currentPosition = slideImages.length - 1; 
                }
                slide();
                resetInterval();
            });

            slideNextButton.addEventListener('click', () => {
                currentPosition++;
                if (currentPosition >= slideImages.length) {
                    currentPosition = 0; 
                }
                slide();
                resetInterval();
            });

            function startInterval() {
                intervalId = setInterval(() => {
                    currentPosition++;
                    if (currentPosition >= slideImages.length) {
                        currentPosition = 0;
                    }
                    slide();
                }, 5000); 
            }

            function resetInterval() {
                clearInterval(intervalId); 
                startInterval(); 
            }

            startInterval(); 
