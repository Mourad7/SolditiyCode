# Visibilité des fonctions et des variables (SWC-100 / SWC-108) :
Les fonctions et les variables qui n’ont pas de type de visibilité sont public par défaut. Cela peut causer une vulnérabilité si le développeur oublie de la spécifier et un utilisateur malintentionné décide d'apporter des changements d'état non autorisés ou involontaires.

Solution :  Spécifier la visibilité comme étant Private, Internal, External, Public :
1)	Private : une fonction / variable privée ne peut être appelé que dans le contrat dans laquelle elle a été déclarée (contrat source).
2)	Internal : la fonction/ variable peut être appelé depuis le contrat source mais également depuis les contrats dérivés 
3)	External : la fonction / variable peut être appelé uniquement depuis un contrat extérieur qui aucune relation avec notre contrat source, ni ses dérivés
4)	Public : le mode par défaut des fonctions / variables, qui spécifie que cette dernière peut être appelé depuis toutes les parties potentielles.

Output : l’analyseur devrait être capable de nous dire quelles fonctions / variables n’ont pas de visibilité par défaut.
