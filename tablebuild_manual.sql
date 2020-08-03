select * from wnba_Teams

CREATE TABLE wnba_Teams (
	season int	NOT NULL,
	team_name varchar(10)	NOT NULL,
	city varchar(50)	NOT NULL,
	coach varchar(50)	NOT NULL,
    PRIMARY KEY (season, team_name)
);

CREATE TABLE Team_Roster (
	season int	NOT NULL,
	team_name varchar(50)	NOT NULL,
	first_name varchar(50)	NOT NULL,
	last_name varchar(50)	NOT NULL,
	PRIMARY KEY (season, team_name)
); 

CREATE TABLE Game_Stats (
    season int	NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_score varchar(10)	NOT NULL,
	away_score varchar(10)	NOT NULL, 
    PRIMARY KEY (season),
	FOREIGN KEY (home_team) REFERENCES wnba_Team(team_name),
	FOREIGN KEY (away_team) REFERENCES wnba_Team(team_name)
);

CREATE TABLE Season_Highlights (
    season int	NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_score varchar(10)	NOT NULL,
	away_score varchar(10)	NOT NULL, 
    PRIMARY KEY (season),
	FOREIGN KEY (home_team) REFERENCES WNBA_Team(team_name),
	FOREIGN KEY (away_team) REFERENCES WNBA_Team(team_name)
);

CREATE TABLE Player_Profile (
    season int   NOT NULL,
    first_name varchar(50)	NOT NULL,
    last_name varchar(50)	NOT NULL,
    team_name varchar(50)	NOT NULL,
    games_played int	NOT NULL,
    minutes_played int	NOT NULL,
    fieldgoals int	NOT NULL,
	fieldgoal_percentage int	NOT NULL,
	freethrows int	NOT NULL,
	freethrow_percentage int	NOT NULL,
	overall_points int	NOT NULL,
	PRIMARY KEY (season,last_name),
	FOREIGN KEY (team_name) REFERENCES Team_Roster(team_name)
);

CREATE TABLE Season_Highlights (
    season int	NOT NULL,
    champion varchar(50)	NOT NULL,
	mvp_playerlastnname varchar(50)	NOT NULL,
	PRIMARY KEY (mvp_playerlastname)
);