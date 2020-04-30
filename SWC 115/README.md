# Autorisation via tx.origin (SWC-115) :

Tx.origin est une variable globale dans Solidity qui renvoie l’adresse du compte qui a envoyé la transaction. Utiliser cette variable pour des autorisations pourrait rendre un contrat vulnérable si jamais un compte autorisé appelle un contrat malveillant.

Solution : Ne pas utiliser tx.origin pour des autorisations mais plutôt msg.sender
