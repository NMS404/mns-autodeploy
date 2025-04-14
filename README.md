# Music Never Stop - MetaServer Deploy

Ce dépôt contient tout le nécessaire pour déployer un MetaServeur IA complet pour le projet Music Never Stop.

## Services inclus :
- MetaForge (API développeur IA)
- MetaGuardian (Sécurité IA)
- n8n (orchestration visuelle)

## Installation
```bash
chmod +x setup.sh
./setup.sh
```

Une fois en ligne :
- http://<ip>:8000 → MetaForge
- http://<ip>:5678 → n8n
- http://<ip>:8686 → Guardian
