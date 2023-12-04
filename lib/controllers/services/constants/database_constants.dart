const DATABASE_NAME = 'mydb.db';
const List<String> SCHEMA = [
  '''
    CREATE TABLE "users" (
        "id"	INTEGER,
        "name"	TEXT NOT NULL,
        "password"	TEXT NOT NULL,
        "email"	TEXT NOT NULL UNIQUE,
        "cart"	TEXT NOT NULL UNIQUE,
        PRIMARY KEY("id" AUTOINCREMENT)
      );
  ''',
  '''
    CREATE TABLE "categories" (
	    "id"	INTEGER NOT NULL,
	    "name"	TEXT NOT NULL UNIQUE,
	    PRIMARY KEY("id" AUTOINCREMENT)
    );
  ''',
  '''
    CREATE TABLE "products" (
      "id"	INTEGER NOT NULL,
      "name"	TEXT,
      "description"	TEXT NOT NULL,
      "price"	INTEGER NOT NULL,
      "sizes"	TEXT,
      "colors"	TEXT,
      "category_id"	INTEGER NOT NULL,
      PRIMARY KEY("id" AUTOINCREMENT),
      CONSTRAINT "fk_category" FOREIGN KEY("category_id") REFERENCES "category"("id")
    );
  ''',
];
