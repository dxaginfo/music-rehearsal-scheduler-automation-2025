CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  email VARCHAR(120) UNIQUE NOT NULL,
  password_hash VARCHAR(200) NOT NULL,
  auth_provider VARCHAR(30)
);
CREATE TABLE groups (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  owner_id INTEGER REFERENCES users(id)
);
CREATE TABLE group_members (
  id SERIAL PRIMARY KEY,
  group_id INTEGER REFERENCES groups(id),
  user_id INTEGER REFERENCES users(id),
  role VARCHAR(20)
);
CREATE TABLE rehearsals (
  id SERIAL PRIMARY KEY,
  group_id INTEGER REFERENCES groups(id),
  date_time TIMESTAMP NOT NULL,
  location VARCHAR(200),
  created_by INTEGER REFERENCES users(id)
);
CREATE TABLE attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  user_id INTEGER REFERENCES users(id),
  confirmed BOOLEAN,
  notes VARCHAR(200)
);
CREATE TABLE reminders (
  id SERIAL PRIMARY KEY,
  rehearsal_id INTEGER REFERENCES rehearsals(id),
  user_id INTEGER REFERENCES users(id),
  sent_at TIMESTAMP
);
