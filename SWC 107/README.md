# Réentrance (SWC-107)

L'un des principaux dangers d'appeler des contrats externes est qu'ils peuvent prendre en charge le flux de contrôle. Dans l'attaque de réentrance (aka attaque d'appel récursive), un contrat malveillant rappelle dans le contrat appelant avant la fin du premier appel de la fonction. Cela peut provoquer des interactions indésirables entre les différentes invocations de la fonction.

Solution:
Les meilleures pratiques pour éviter les faiblesses de réentrance sont les suivantes:

1. Assurez-vous que tous les changements d'état internes sont effectués avant l'exécution de l'appel. Ceci est connu comme le modèle de contrôles-effets-interactions
2. Utilisez un verrou de réentrance (c.-à-d. ReentrancyGuard d'OpenZeppelin)
