document.addEventListener('DOMContentLoaded', function () {
    // Login Form Validation
    const loginForm = document.querySelector('form[action="login.cfm"]');
    if (loginForm) {
        loginForm.addEventListener('submit', function (event) {
            const username = loginForm.querySelector('#username').value;
            const password = loginForm.querySelector('#password').value;
            
            if (username.trim() === '' || password.trim() === '') {
                event.preventDefault();
                alert('Please fill in all fields.');
            }
        });
    }

    // Registration Form Validation
    const registerForm = document.querySelector('form[action="register.cfm"]');
    if (registerForm) {
        registerForm.addEventListener('submit', function (event) {
            const username = registerForm.querySelector('#username').value;
            const password = registerForm.querySelector('#password').value;

            if (username.trim() === '' || password.trim() === '') {
                event.preventDefault();
                alert('Please fill in all fields.');
            }
        });
    }

    // Example Dynamic Content for Courses Page
    const coursesList = document.querySelector('#courses-list');
    if (coursesList) {
        const courses = [
            'Introduction to ColdFusion',
            'Responsive Web Design',
            'Advanced JavaScript Techniques'
        ];

        courses.forEach(course => {
            const listItem = document.createElement('li');
            listItem.textContent = course;
            coursesList.appendChild(listItem);
        });
    }
});
