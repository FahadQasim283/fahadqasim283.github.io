// Main JavaScript for portfolio website
document.addEventListener('DOMContentLoaded', function() {
  console.log('Portfolio website loaded');
  
  // Smooth scrolling for anchor links
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
      e.preventDefault();
      document.querySelector(this.getAttribute('href')).scrollIntoView({
        behavior: 'smooth'
      });
    });
  });

  // Initialize other components
  initThemeToggle();
});

function initThemeToggle() {
  // Will implement theme switching functionality here
  const themeToggle = document.getElementById('theme-toggle');
  if (themeToggle) {
    themeToggle.addEventListener('click', toggleTheme);
  }
}

function toggleTheme() {
  document.body.classList.toggle('dark-theme');
}
