// theme.js

document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.getElementById("theme-toggle");

  // Восстанавливаем тему
  const saved = localStorage.getItem("theme");
  if (saved === "dark") {
    document.body.classList.add("dark");
    toggle.checked = true;
  }

  toggle.addEventListener("change", () => {
    if (toggle.checked) {
      document.body.classList.add("dark");
      localStorage.setItem("theme", "dark");
    } else {
      document.body.classList.remove("dark");
      localStorage.setItem("theme", "light");
    }
  });
});
// theme.js

// Проверка сохранённой темы при загрузке страницы
if (localStorage.getItem('theme') === 'dark') {
    document.body.classList.add('dark');
    const toggle = document.getElementById('theme-toggle');
    if (toggle) toggle.checked = true;
  }
  
  // Слушатель переключения
  const toggle = document.getElementById('theme-toggle');
  if (toggle) {
    toggle.addEventListener('change', () => {
      document.body.classList.toggle('dark');
      localStorage.setItem('theme',
        document.body.classList.contains('dark') ? 'dark' : 'light');
    });
  }
  