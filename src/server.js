require("dotenv").config();

const required = ["PGHOST", "PGUSER", "PGPASSWORD", "PGDATABASE"];
const missing = required.filter((name) => !process.env[name]);
if (missing.length > 0) {
  console.error(`Variables d'environnement manquantes : ${missing.join(", ")}`);
  console.error("Copie .env.example vers .env, puis choisis un mot de passe.");
  process.exit(1);
}

const app = require("./app");

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`Résa démarré sur http://localhost:${port}`);
});