
ALTER TABLE person_relay ADD COLUMN read INTEGER NOT NULL DEFAULT 0;
ALTER TABLE person_relay ADD COLUMN write INTEGER NOT NULL DEFAULT 0;
ALTER TABLE person RENAME COLUMN contact_list_last_received TO relay_list_last_received;
ALTER TABLE person ADD COLUMN relay_list_created_at INTEGER NOT NULL DEFAULT 0;
ALTER TABLE relay RENAME COLUMN post TO write;
ALTER TABLE relay ADD COLUMN read INTEGER NOT NULL DEFAULT 0;
ALTER TABLE relay ADD COLUMN advertise INTEGER NOT NULL DEFAULT 0;