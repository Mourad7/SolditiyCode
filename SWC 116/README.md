# Dépendance de l’horodatage (Timestamp SWC-116) :
Les contrats ont souvent besoin d’accéder à l’horodatage actuel pour déclencher certains événements. A cause de la nature décentralisé d’Ethereum, les nœuds ne peuvent synchroniser l’heure que dans une certaine mesure. Ainsi les mineurs malveillants peuvent en profiter pour modifier l’horodatage de leur bloc. (Soit pour enclencher des événements plus tôt que prévu, ou au contraire les empêcher).

Solution : Les développeurs ne devraient pas faire confiance à la précision de l’horodatage fourni, et plutôt envisager l’utilisation des numéros des blocs ou encore des sources externes d’horodatage via des oracles.
