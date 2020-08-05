-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/PbSTHp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "WNBA_Teams" (
    "team_name" varchar(50)   NOT NULL,
    "season" INT   NOT NULL,
    "city" varchar(50)   NOT NULL,
    "coach" varchar(50)   NOT NULL,
    CONSTRAINT "pk_WNBA_Teams" PRIMARY KEY (
        "team_name","season"
     )
);

CREATE TABLE "Team_Roster" (
    "season" INT   NOT NULL,
    "team_name" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Team_Roster" PRIMARY KEY (
        "season","team_name"
     )
);

CREATE TABLE "Games_Stats" (
    "season" INT   NOT NULL,
    "home_team" varchar(50)   NOT NULL,
    "away_team" varchar(50)   NOT NULL,
    "home_score" INT   NOT NULL,
    "away_score" INT   NOT NULL,
    CONSTRAINT "pk_Games_Stats" PRIMARY KEY (
        "season"
     )
);

CREATE TABLE "Player_Profile" (
    "season" INT   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "team_name" varchar(50)   NOT NULL,
    "position" varchar(50)   NOT NULL,
    "games_played" INT   NOT NULL,
    "minutes_played" INT   NOT NULL,
    "fieldgoals" INT   NOT NULL,
    "fieldgoal_percentage" INT   NOT NULL,
    "freethrows" INT   NOT NULL,
    "freethrow_percentage" INT   NOT NULL,
    "overall_points" INT   NOT NULL,
    CONSTRAINT "pk_Player_Profile" PRIMARY KEY (
        "season","last_name"
     )
);

CREATE TABLE "Season_Highlights" (
    "season" INT   NOT NULL,
    "champion" varchar(50)   NOT NULL,
    "mvp_playerlastname" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Season_Highlights" PRIMARY KEY (
        "season","mvp_playerlastname"
     )
);

ALTER TABLE "WNBA_Teams" ADD CONSTRAINT "fk_WNBA_Teams_season" FOREIGN KEY("season")
REFERENCES "Team_Roster" ("season");

ALTER TABLE "Games_Stats" ADD CONSTRAINT "fk_Games_Stats_season" FOREIGN KEY("season")
REFERENCES "Player_Profile" ("season");

ALTER TABLE "Games_Stats" ADD CONSTRAINT "fk_Games_Stats_home_team" FOREIGN KEY("home_team")
REFERENCES "WNBA_Teams" ("team_name");

ALTER TABLE "Games_Stats" ADD CONSTRAINT "fk_Games_Stats_away_team" FOREIGN KEY("away_team")
REFERENCES "WNBA_Teams" ("team_name");

ALTER TABLE "Player_Profile" ADD CONSTRAINT "fk_Player_Profile_team_name" FOREIGN KEY("team_name")
REFERENCES "Team_Roster" ("team_name");

ALTER TABLE "Season_Highlights" ADD CONSTRAINT "fk_Season_Highlights_season" FOREIGN KEY("season")
REFERENCES "WNBA_Teams" ("season");

ALTER TABLE "Season_Highlights" ADD CONSTRAINT "fk_Season_Highlights_mvp_playerlastname" FOREIGN KEY("mvp_playerlastname")
REFERENCES "Player_Profile" ("last_name");

