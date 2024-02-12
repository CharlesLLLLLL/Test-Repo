--
-- File generated with SQLiteStudio v3.4.4 on ��һ 2�� 12 08:35:26 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Categories
CREATE TABLE IF NOT EXISTS Categories (
    category_id INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL
);


-- Table: items
CREATE TABLE IF NOT EXISTS items (
    id          INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL,
    price       REAL    NOT NULL,
    catogory_id INTEGER,
    FOREIGN KEY (
        name,
        price,
        catogory_id
    )
    REFERENCES items (name,
    price,
    catogory_id) DEFERRABLE
);

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      1,
                      'Romantic Fruit Salad',
                      '��9.99',
                      'Salad'
                  );

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      2,
                      'Clever Egg Brother',
                      '��12.34',
                      'Main Meal'
                  );

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      3,
                      'Lover Milk Shake',
                      '��5.2',
                      'Milk Shake'
                  );

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      4,
                      'Chris Bumstead Salmon Rice',
                      '��16.66',
                      'Main Meal'
                  );

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      5,
                      'Potato King and Onion Monster',
                      '��11.22',
                      'Main Meal'
                  );

INSERT INTO items (
                      id,
                      name,
                      price,
                      catogory_id
                  )
                  VALUES (
                      6,
                      'Cucumber Bomb',
                      '��6.55',
                      'Main Meal'
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
