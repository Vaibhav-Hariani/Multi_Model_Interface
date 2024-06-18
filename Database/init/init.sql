CREATE TABLE IF NOT EXISTS "user" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "email" varchar
);

CREATE TABLE IF NOT EXISTS "question" (
  "id" integer PRIMARY KEY,
  "user_id" integer,
  "query" text,
  "created_at" timestamp
);

CREATE TABLE IF NOT EXISTS "answers" (
  "id" integer PRIMARY KEY,
  "queryid" integer,
  "model" varchar,
  "response" text
);

ALTER TABLE "question" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "answers" ADD FOREIGN KEY ("queryid") REFERENCES "question" ("id");
