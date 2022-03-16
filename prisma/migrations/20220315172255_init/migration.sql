-- CreateTable
CREATE TABLE "pitcher" (
    "name" VARCHAR(20) NOT NULL,
    "team" VARCHAR(20),
    "wins" INTEGER,
    "losses" INTEGER,
    "era" DECIMAL,
    "games" INTEGER,
    "games_started" INTEGER,
    "saves" INTEGER,
    "innings_pitched" DECIMAL,
    "hits" INTEGER,
    "earned_runs" INTEGER,
    "home_runs_allowed" INTEGER,
    "strikeouts" INTEGER,
    "walks" INTEGER,
    "whip" DECIMAL,
    "ks_per_nine" DECIMAL,
    "walks_per_nine" DECIMAL,
    "fip" DECIMAL,
    "war" DECIMAL,
    "ra_nine_war" DECIMAL,
    "adp" DECIMAL,
    "id" INTEGER NOT NULL,

    CONSTRAINT "pitcher_pkey" PRIMARY KEY ("id")
);
