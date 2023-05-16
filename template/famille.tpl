<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Marmit@ - {{nom}}</title>
    <link rel="icon" type="image/x-icon" href="/image/favicon.ico">
    <link href="/style.css" rel="stylesheet" text="text/css">
    <!-- Google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Ajouter un en-tête avec un logo svg avec le texte "Marmit@" et une barre de recherche -->
    <header>
        <a href="../">
            <img src="/image/logo_text.svg" alt="Logo Marmit@">
        </a>
        <form class="search-container" action="/chercheRecettes" method="POST">
            <input name="recette" type="text" placeholder="Rechercher une recette" class="search-input">
            <button type="submit" class="search-button"> <img src="/image/loop_search.svg"></button>
        </form>
    </header>

    <nav class="fils">
        <a href="../">Accueil</a> > <a href="famille?id={{listeRecettes[0].famille}}">{{nom}}</a>
    </nav>
    
    <div class="main-content">
        <div class="content">
            <p><span class="bigger">Des recettes de cuisine faciles et rapides</span></p>
        </div>

        <div class="grid-container">
            %for recette in listeRecettes:
                <a href="recettes/{{recette.Id}}">
                    <div class="grid-item-container">
                    <div class="img-overlay"></div>
                    <img src="{{recette.image}}" class="grid-item" alt="Image {{recette.nom}}">
                    <span class="grid-item-text">{{recette.nom}}</span>
                    </div>
                </a>
            %end
        </div>
    </div>


    <!-- Ajouter un pied de page avec un logo svg avec le texte "Marmit@" et des liens vers les mentions légales et le contact -->
    <footer class="footer">
        <a href="../">
            <img src="image/logo.svg" alt="Logo Marmit@">
        </a>
        <div class="liens">
            <a href="mentions">Mentions légales</a>
            <a href="contact">Contact</a>
        </div>
        <div class="liens">
            <a href="https://github.com/Hidden-Warden/Marmit65">GitHub</a>
        </div>
    </footer>
    <div class="overlay"></div>
</body>