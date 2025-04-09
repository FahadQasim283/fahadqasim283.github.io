// Animation triggers for portfolio website
function animateOnScroll() {
  const elements = document.querySelectorAll('.animate-on-scroll');
  
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('active');
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.1 });

  elements.forEach(element => {
    observer.observe(element);
  });
}

function initAnimations() {
  animateOnScroll();
  
  // Add event listeners for hover animations
  document.querySelectorAll('.hover-animate').forEach(element => {
    element.addEventListener('mouseenter', () => {
      element.classList.add('hover-active');
    });
    element.addEventListener('mouseleave', () => {
      element.classList.remove('hover-active');
    });
  });
}

// Initialize animations when DOM is loaded
document.addEventListener('DOMContentLoaded', initAnimations);
