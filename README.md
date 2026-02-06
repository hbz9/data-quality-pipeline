# data-quality-pipeline
SQL + Data Quality checks + rep# Bevölkerung & Arbeitsmarkt – Mini Data Project

Ziel: Aufbau eines relationalen Schemas (PostgreSQL), SQL-Auswertungen (JOIN/CTE/Window Functions)
sowie Datenqualitätsprüfungen (Missing/Referenzen). Fokus: reproduzierbare Schritte und saubere Dokumentation.

## Tech
- PostgreSQL 16 (Docker Compose)

## Start
1. Datenbank starten:
   - `docker compose up -d`
2. Tabellen anlegen:
   - `schema/01_tables.sql` ausführen
3. Öffentliche Daten importieren (CSV nicht im Repo gespeichert)
4. SQL-Analysen:
   - `queries/`
5. Data Quality Checks:
   - `quality/`

## Data source
- Public datasets (Links & Download-Date hinzugefügt, sobald festgelegt)

## Notes
- Keine personenbezogenen Daten im Repository.
