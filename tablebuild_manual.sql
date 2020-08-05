CREATE TABLE Game_Stats_2018 (
    season int	NOT NULL,
	"date" DATE	NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_score varchar(10)	NOT NULL,
	away_score varchar(10)	NOT NULL
);

CREATE TABLE Game_Stats_2019 (
    season int	NOT NULL,
	"date" DATE	NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_score varchar(10)	NOT NULL,
	away_score varchar(10)	NOT NULL 
);

CREATE TABLE Player_Profile_2018 (
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
	overall_points int	NOT NULL
);

CREATE TABLE Player_Profile_2019 (
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
	overall_points int	NOT NULL
);

