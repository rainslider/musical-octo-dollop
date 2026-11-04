# Paint and Hide - Account Panel
Los account-dashboard voor dezelfde Paint and Hide database. Het toont gebruikersnaam, munten, uitgegeven munten en premiumstatus. Het toont bewust geen admin-wachtwoord of geheime toegangscode: die hoort niet zichtbaar te zijn in een normaal gebruikersaccount.

## Starten
1. Start eerst de hoofdgame met `docker compose up --build` in de map van Paint and Hide.
2. Zorg dat de Docker-volume `paint-and-hide_paint_data` bestaat.
3. Start dit account-panel met `docker compose up --build`.
4. Open http://localhost:3001.

Beide projecten moeten dezelfde `SESSION_SECRET` gebruiken als je sessies tussen beide sites wilt delen. Voor productie moet je bovendien een gedeelde sessie-opslag configureren; deze demo gebruikt standaard express-session geheugenopslag, dus login-sessies worden niet automatisch tussen de twee apps gedeeld. Log daarom op beide apps apart in.
