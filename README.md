# Résa

Application de réservation des salles du campus.

## Prérequis

- Git
- Docker + Docker Compose v2
- Node.js 26 (pour les hooks Git du Lab 2 et pour développer hors conteneur)

## Démarrer en 3 commandes

```bash
git clone https://github.com/PROPRIETAIRE/resa.git
cd resa
cp .env.example .env   # puis choisir un mot de passe dans .env (lettres et chiffres)
docker compose up --build
```

L'application est disponible sur http://localhost:3000/

## Développer sans reconstruire l'image

```bash
nvm use
npm ci
docker compose up -d db
npm run dev
```

## Dépannage

- **Port déjà utilisé** : changer `PORT` ou `PGPORT` dans `.env`.
- **Réinitialiser la base** : `docker compose down -v` (`init.sql` ne s'exécute que sur un volume vide).
- **Linux : `permission denied` sur Docker** : `sudo usermod -aG docker $USER`, puis se déconnecter et se reconnecter.

## Contribuer

- **Un ticket, une branche** : partir de `main` à jour et nommer la branche `type/numero-description` (ex. `docs/21-equipe-chaudettom`, `chore/7-commitlint`).
- **Messages de commit** au format [Conventional Commits](https://www.conventionalcommits.org/fr/) : `type: description` (`feat`, `fix`, `docs`, `chore`, `refactor`, `test`…).
- **Une pull request par ticket**, avec `Closes #n` dans la description, relue et approuvée par au moins un·e coéquipier·e.
- **Fusion en squash merge** uniquement ; personne ne pousse directement sur `main`.
- **Hooks Git** : installés automatiquement par `npm install` (script `prepare` → Husky). Ils refusent les messages de commit non conformes.

## Équipe

- Tom (@chaudettom)
- Owen (@Own-667AI)
