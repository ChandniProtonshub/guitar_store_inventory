PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
INSERT INTO "schema_migrations" VALUES('20180429184050');
INSERT INTO "schema_migrations" VALUES('20180429184115');
INSERT INTO "schema_migrations" VALUES('20180429190247');
INSERT INTO "schema_migrations" VALUES('20180429190443');
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2018-04-29 19:05:10.293771','2018-04-29 19:05:10.293771');
INSERT INTO "users" VALUES(1,'cmchetanm@gmail.com','chetan','mehta','2018-05-21 20:46:15.776166','2018-05-21 20:46:15.776166');
INSERT INTO "users" VALUES(2,'saurabhm2588@gmail.com','saurabh','mehta','2018-05-21 20:47:34.782152','2018-05-21 20:47:34.782152');
INSERT INTO "guitars" VALUES(1,'Juarez','UKU4',0,5,44.2,'CCA-121','2018-05-22','2018-05-22',1,'2018-05-21 20:54:40.138950','2018-05-21 20:54:40.138950');
INSERT INTO "guitars" VALUES(2,'KANDACE','KAD',1,4,467.2,'CAD-114','2018-05-22',NULL,1,'2018-05-21 20:54:44.762653','2018-05-21 20:54:44.762653');
INSERT INTO "guitar_picks" VALUES(1,1,1,1,36,'2018-05-21 20:57:36.355629','2018-05-21 20:57:36.355629');
INSERT INTO "guitar_picks" VALUES(2,2,0,2,23,'2018-05-21 20:57:37.557384','2018-05-21 20:57:37.557384');
INSERT INTO "straps" VALUES(1,2,2,'regular',233,'2018-05-21 20:59:52.107600','2018-05-21 20:59:52.107600');
INSERT INTO "straps" VALUES(2,1,1,'large',569,'2018-05-21 20:59:57.760073','2018-05-21 20:59:57.760073');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',2);
INSERT INTO "sqlite_sequence" VALUES('guitars',2);
INSERT INTO "sqlite_sequence" VALUES('guitar_picks',2);
INSERT INTO "sqlite_sequence" VALUES('straps',2);
COMMIT;
