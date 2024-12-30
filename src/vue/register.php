<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Inscription</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../resources/style/login.css"/>
</head>
<body>
<div class="login">
    <h1>Inscription</h1>
    <form method="post" action="register.php" class="login">
        <div>
            <label for="firstname">Prenom</label>
            <input type="text" id="firstname" name="firstname" required>

            <label for="name">Nom</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Mot de passe</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmpassword">Confirmer le mot de passe</label>
            <input type="password" id="password" name="confirmpassword" required>
        </div>
        <input type="submit" value="Se connecter">
    </form>
</div>
</body>
</html>