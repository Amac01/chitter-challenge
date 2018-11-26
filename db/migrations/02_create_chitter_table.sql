CREATE TABLE peeps(peep_id SERIAL PRIMARY KEY, user_id INTEGER, FOREIGN KEY (user_id) REFERENCES users (user_id), content VARCHAR NOT NULL);
