# Faibles sources de génération d’attributs aléatoires (SWC-120) :

Utilisé dans plusieurs cas d’applications, on génère souvent des nombres aléatoires, cependant créer une source de nombres aléatoires suffisamment forte dans Ethereum est très difficile, Par exemple, l'utilisation de block.timestamp n'est pas sécurisée, car un mineur peut choisir de fournir n'importe quel horodatage en quelques secondes et de faire accepter son bloc par d'autres. Si les enjeux sont élevés, le mineur peut créer beaucoup de blocs en peu de temps en louant du matériel, choisir le bloc nécessaire, et laisser tomber tous les autres.

Solution : 
•	Utiliser d’un schéma d’engagement, par exemple RANDAO
•	Utiliser des sources externes pour la génération aléatoire (via des oracles), par exemple Oraclize.
•	Utiliser des hachages de blocs Bitcoin, car ils sont plus robustes
