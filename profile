<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Личный кабинет • da1sx.brows</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="container" style="max-width: 600px; margin: 50px auto;">
    <h2>Добро пожаловать, Дарья!</h2>
    <p id="visit-info"></p>

    <button id="logout">Выйти</button>
  </div>

  <script>
    const visits = parseInt(localStorage.getItem("visits")) || 0;
    const info = document.getElementById("visit-info");

    if (visits >= 6) {
      info.innerHTML = `🎉 Это ваше <strong>${visits}</strong>-е посещение.<br><strong>Скидка 10% активирована!</strong>`;
    } else {
      info.innerHTML = `🔄 Это ваше <strong>${visits}</strong>-е посещение. До скидки осталось: <strong>${6 - visits}</strong> посещений.`;
    }

    document.getElementById("logout").addEventListener("click", () => {
      localStorage.removeItem("visits");
      window.location.href = "login.html";
    });
  </script>
</body>
</html>
