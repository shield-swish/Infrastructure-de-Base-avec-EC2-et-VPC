Ce projet consiste à automatiser le déploiement d'une infrastructure AWS en utilisant Terraform et des modules locaux. Il crée une architecture basique mais professionnelle, comprenant :

- Un VPC pour un réseau privé isolé
- Une subnet publique pour héberger une machine accessible via Internet
- Une Internet Gateway pour permettre la communication avec Internet
- Une table de routage pour gérer le trafic réseau
- Un Security Group pour sécuriser les connexions (SSH & HTTP)
- Une instance EC2 Ubuntu qui sert de serveur web ou d'application
- Une Elastic IP pour une adresse publique fixe

Objectif et Utilité :
- Automatisation : Utiliser Terraform pour automatiser le déploiement et la gestion de l'infrastructure, réduisant ainsi les erreurs humaines et le temps de gestion.
- Scalabilité : L'architecture est prête à être étendue, par exemple, en ajoutant des serveurs supplémentaires, un load balancer ou une base de données.
