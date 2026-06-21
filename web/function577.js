const container = document.getElementById('container');
const registerButton = document.getElementById('register');
const loginButton = document.getElementById('login');

function showPopup(message) {
    document.getElementById('errorText').textContent = message;
    document.getElementById('errorPopup').style.display = 'block';
}

function closePopup() {
    document.getElementById('errorPopup').style.display = 'none';
}

registerButton.addEventListener('click', () => {
    container.classList.add("active");
});

loginButton.addEventListener('click', () => {
    container.classList.remove("active");
});