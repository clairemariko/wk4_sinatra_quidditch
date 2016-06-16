
CREATE TABLE teams(
id SERIAL8 primary key,
name VARCHAR(255),
manager VARCHAR(255),
robes   VARCHAR(255)
);

CREATE TABLE players(
id SERIAL8 primary key,
name VARCHAR(255),
team_id INT8 references teams(id)    

);






