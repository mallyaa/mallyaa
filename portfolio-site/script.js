(function () {
  // Smooth scroll for nav links
  document.querySelectorAll('.nav-links a[href^="#"]').forEach(function (a) {
    a.addEventListener('click', function (e) {
      var id = this.getAttribute('href');
      if (id === '#') return;
      e.preventDefault();
      var el = document.querySelector(id);
      if (el) el.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
  });

  // Optional: highlight current section in nav
  var sections = document.querySelectorAll('.section, .hero');
  var navLinks = document.querySelectorAll('.nav-links a[href^="#"]');

  function updateNav() {
    var top = window.scrollY + 100;
    var current = '';
    sections.forEach(function (s) {
      if (s.offsetTop <= top) current = '#' + (s.id || '');
    });
    navLinks.forEach(function (a) {
      a.classList.toggle('active', a.getAttribute('href') === current);
    });
  }

  window.addEventListener('scroll', updateNav);
  updateNav();
})();
