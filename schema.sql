CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar, "first_name" varchar, "last_name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "guitars" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "brand" varchar, "model" varchar, "guitar_type" integer, "number_of_strings" integer, "price" decimal, "serial_number" varchar NOT NULL, "date_purchased" date, "date_sold" date, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_eb2f3ae87f"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
CREATE INDEX "index_guitars_on_user_id" ON "guitars" ("user_id");
CREATE TABLE "guitar_picks" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "guitar_id" integer, "for_guitar_type" integer, "user_id" integer, "in_stock_quantity" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_323ec842bf"
FOREIGN KEY ("guitar_id")
  REFERENCES "guitars" ("id")
, CONSTRAINT "fk_rails_7a88886c22"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
CREATE INDEX "index_guitar_picks_on_guitar_id" ON "guitar_picks" ("guitar_id");
CREATE INDEX "index_guitar_picks_on_user_id" ON "guitar_picks" ("user_id");
CREATE TABLE "straps" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "guitar_id" integer, "user_id" integer, "size" varchar, "in_stock_quantity" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, CONSTRAINT "fk_rails_4b82062c25"
FOREIGN KEY ("guitar_id")
  REFERENCES "guitars" ("id")
, CONSTRAINT "fk_rails_bab6d6f5f5"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
CREATE INDEX "index_straps_on_guitar_id" ON "straps" ("guitar_id");
CREATE INDEX "index_straps_on_user_id" ON "straps" ("user_id");
