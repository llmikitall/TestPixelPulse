// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



// Кнопка ПРИСОЕДИНИТЬСЯ
const joinBtn = document.getElementById('joinBtn');
if(joinBtn) {
    joinBtn.addEventListener('click', () => {
        alert('Добро пожаловать в Retro Game Forum! (Регистрация откроется в 199X году...)');
        document.body.style.backgroundColor = '#0f0';
        setTimeout(() => document.body.style.backgroundColor = '#000', 100);
    });
}

// Онлайн-счетчик (флуктуация)
let online = 128;
const onlineSpan = document.getElementById('onlineCount');
if(onlineSpan) {
    setInterval(() => {
        const change = Math.floor(Math.random() * 5) - 2;
        online = Math.max(100, Math.min(200, online + change));
        onlineSpan.textContent = online;
    }, 5000);
}

// Эффект мерцания ЭЛТ
setInterval(() => {
    if(Math.random() > 0.9) {
        const crtDiv = document.querySelector('.crt');
        if(crtDiv) {
            crtDiv.style.opacity = '0.3';
            setTimeout(() => { if(crtDiv) crtDiv.style.opacity = '1'; }, 100);
        }
    }
}, 3000);
