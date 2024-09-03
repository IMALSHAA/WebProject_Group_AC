// script.js
document.addEventListener('DOMContentLoaded', (event) => {
    const mouse = document.getElementById('mouse');
    const cheese = document.getElementById('cheese');
    const gameContainer = document.getElementById('gameContainer');

    // Set initial positions
    mouse.style.left = '10px';
    mouse.style.top = '10px';
    placeCheese();

    // Function to place cheese in a random position
    function placeCheese() {
        const containerWidth = gameContainer.clientWidth;
        const containerHeight = gameContainer.clientHeight;
        const cheeseSize = cheese.clientWidth;

        const randomX = Math.floor(Math.random() * (containerWidth - cheeseSize));
        const randomY = Math.floor(Math.random() * (containerHeight - cheeseSize));

        cheese.style.left = randomX + 'px';
        cheese.style.top = randomY + 'px';
    }

    // Move mouse with arrow keys
    document.addEventListener('keydown', (e) => {
        const mouseRect = mouse.getBoundingClientRect();
        const containerRect = gameContainer.getBoundingClientRect();
        const step = 10;

        switch (e.key) {
            case 'ArrowUp':
                if (mouseRect.top > containerRect.top) {
                    mouse.style.top = mouse.offsetTop - step + 'px';
                }
                break;
            case 'ArrowDown':
                if (mouseRect.bottom < containerRect.bottom) {
                    mouse.style.top = mouse.offsetTop + step + 'px';
                }
                break;
            case 'ArrowLeft':
                if (mouseRect.left > containerRect.left) {
                    mouse.style.left = mouse.offsetLeft - step + 'px';
                }
                break;
            case 'ArrowRight':
                if (mouseRect.right < containerRect.right) {
                    mouse.style.left = mouse.offsetLeft + step + 'px';
                }
                break;
        }

        // Check collision with cheese
        if (isColliding(mouse, cheese)) {
            placeCheese();  // Move cheese to a new position
        }
    });

    // Function to check collision
    function isColliding(element1, element2) {
        const rect1 = element1.getBoundingClientRect();
        const rect2 = element2.getBoundingClientRect();

        return !(
            rect1.top > rect2.bottom ||
            rect1.bottom < rect2.top ||
            rect1.left > rect2.right ||
            rect1.right < rect2.left
        );
    }
});