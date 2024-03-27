
// Création de la variable pour compter le nombre d'araignées
var countSpider = instance_number(o_Spider);

// Vérification du nombre d'araignées
if (countSpider < 15) {
    // Calcul de la position de spawn
    var spawnX = choose(random_range(-1000,-1500), random_range(1000, 1500));
    var spawnY = o_Jester.y; // Vous pouvez changer cette valeur selon votre besoin

    // Création de l'araignée
    var spawn_Spider = instance_create_depth(spawnX, spawnY,0, o_Spider);
}