PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20180429184050');
INSERT INTO "schema_migrations" VALUES('20180429184115');
INSERT INTO "schema_migrations" VALUES('20180429190247');
INSERT INTO "schema_migrations" VALUES('20180429190443');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2018-04-29 19:05:10.293771','2018-04-29 19:05:10.293771');
CREATE TABLE "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar, "first_name" varchar, "last_name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "users" VALUES(1,'cmchetanm@gmail.com','chetan','mehta','2018-05-21 20:46:15.776166','2018-05-21 20:46:15.776166');
INSERT INTO "users" VALUES(2,'saurabhm2588@gmail.com','saurabh','mehta','2018-05-21 20:47:34.782152','2018-05-21 20:47:34.782152');
CREATE TABLE "guitars" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "brand" varchar, "model" varchar, "guitar_type" integer, "number_of_strings" integer, "price" decimal, "serial_number" varchar NOT NULL, "date_purchased" date, "date_sold" date, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_eb2f3ae87f"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO "guitars" VALUES(1,'Juarez','UKU4',0,5,44.2,'CCA-121','2018-05-22','2018-05-22',1,'2018-05-21 20:54:40.138950','2018-05-21 20:54:40.138950');
INSERT INTO "guitars" VALUES(2,'KANDACE','KAD',1,4,467.2,'CAD-114','2018-05-22',NULL,1,'2018-05-21 20:54:44.762653','2018-05-21 20:54:44.762653');
CREATE TABLE "guitar_picks" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "guitar_id" integer, "for_guitar_type" integer, "user_id" integer, "in_stock_quantity" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_323ec842bf"
FOREIGN KEY ("guitar_id")
  REFERENCES "guitars" ("id")
, CONSTRAINT "fk_rails_7a88886c22"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO "guitar_picks" VALUES(1,1,1,1,36,'2018-05-21 20:57:36.355629','2018-05-21 20:57:36.355629');
INSERT INTO "guitar_picks" VALUES(2,2,0,2,23,'2018-05-21 20:57:37.557384','2018-05-21 20:57:37.557384');
CREATE TABLE "straps" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "guitar_id" integer, "user_id" integer, "size" varchar, "in_stock_quantity" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_4b82062c25"
FOREIGN KEY ("guitar_id")
  REFERENCES "guitars" ("id")
, CONSTRAINT "fk_rails_bab6d6f5f5"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO "straps" VALUES(1,2,2,'regular',233,'2018-05-21 20:59:52.107600','2018-05-21 20:59:52.107600');
INSERT INTO "straps" VALUES(2,1,1,'large',569,'2018-05-21 20:59:57.760073','2018-05-21 20:59:57.760073');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',2);
INSERT INTO "sqlite_sequence" VALUES('guitars',2);
INSERT INTO "sqlite_sequence" VALUES('guitar_picks',2);
INSERT INTO "sqlite_sequence" VALUES('straps',2);
CREATE INDEX "index_guitars_on_user_id" ON "guitars" ("user_id");
CREATE INDEX "index_guitar_picks_on_guitar_id" ON "guitar_picks" ("guitar_id");
CREATE INDEX "index_guitar_picks_on_user_id" ON "guitar_picks" ("user_id");
CREATE INDEX "index_straps_on_guitar_id" ON "straps" ("guitar_id");
CREATE INDEX "index_straps_on_user_id" ON "straps" ("user_id");
COMMIT;
