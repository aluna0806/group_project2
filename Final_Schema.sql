CREATE TABLE Game_Data_2018 (
	Season INT	NOT NULL,
	"date" varchar(50) NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_team_pts varchar(10)	NOT NULL,
	away_team_pts varchar(10)	NOT NULL
);

CREATE TABLE Game_Data_2019 (
    Season INT	NOT NULL,
	"date" DATE	NOT NULL,
	home_team varchar(10)	NOT NULL,
	away_team varchar(10)	NOT NULL,
	home_team_pts varchar(10)	NOT NULL,
	away_team_pts varchar(10)	NOT NULL 
);

CREATE TABLE Player_Profile_2018 (
    Season INT,
    Player varchar(50),
    team_name varchar(50),
	"Position" varchar(50),
    Games INT,
    FG INT,
	FG_pct INT,
	FT INT,
	FT_pct INT,
	Total_Pts INT
);

CREATE TABLE Player_Profile_2019 (
	Season INT,
    Player varchar(50),
    team_name varchar(50),
	"Position" varchar(50),
    Games INT,
    FG INT,
	FG_pct varchar(100),
	FT INT,
	FT_pct varchar(100),
	Total_Pts INT
);
