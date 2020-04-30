# Retrait d'éther non protégé (SWC-105) :
En raison de contrôles d'accès manquants ou insuffisants, les parties malveillantes peuvent retirer tout ou partie de l'Ether du compte du contrat.
Ce bogue est parfois provoqué par l'exposition involontaire de fonctions d'initialisation. En nommant à tort une fonction destinée à être un constructeur, le code du constructeur se retrouve dans le code d'octet d'exécution et peut être appelé par n'importe qui pour réinitialiser le contrat.

Solution : Mettre en œuvre des contrôles afin que les retraits ne puissent être déclenchés que par des parties autorisées ou selon les spécifications du système de contrat intelligent.
