/* the three lines of code below contain many special commands.  
	"id INT NOT NULL PRIMARY KEY AUTO_INCREMENT" means the row with "ID" has to be an integer and it will index at 1, 
		and increment by 1 at every interval. PRIMARY KEY forces the specified column to behave as a completely unique index for the table, 
		allowing for rapid searching and queries. NOT NULL means that *something* must be contained in those parameters. 
		"ENGINE=InnoDB DEFAULT CHARSET=utf8" ENGINE=InnoDB is a database storing engine where tables are stored, recieved and handled. 
		DEFAULT CHARSET = UTF-8 is a standardized code use to transform alphabets and characters into bits that computers understand. */
/* the line of code below creates a table called "Recipe" with table names being "id" "name" "description" and "instructions"*/
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* the line of code below creates a table called "Ingredient" with table names being "id" and "name" */
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
/* the line of code below creates a table called "measure" with table names being "id" and "name" */
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
/* the line of code below creates a table with reference points on where the information will be stored. */
create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/* measure_id index				/* 1		2				3				4			5			6 					7 */
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE'), ('SPLASH'), ('WHOLE CONTAINER'), ('QUART');
			
/* ingredient_id index			/*	  1			2		3			4				5					6			7					8				9				10 					11 			12			13				14*/
INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour'), ('peanut butter'), ('cream cheese'), ('cool whip'), ('powdered sugar'), ('cinnamon'), ('onion'), ('olive oil'), ('waateer') ;

/* recipe_id index */
/*	we are adding to the table recipe, with the parameters "name, description, and instructions. The values will then be added respectivley. "
/* 1 */INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

/* 2 */INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');

/* 3 */INSERT INTO Recipe (name, description, instructions) VALUES('Peanut Butter Pie', 'Easy Dessert', 'whip together peanut butter, cool whip, cream cheese, and powdered sugar. put in a graham cracker crust, put in fridge to set.');

/* 4 */INSERT INTO Recipe (name, description, instructions) VALUES('Snickerdoodles', 'the go-to cookie', "mix wet ingredients, then mix dry ingredients, separate into 1 inch balls, roll in a cinnamon sugar coating, bake 350 for 8 minutes.");

/* 5 */INSERT INTO Recipe (name, description, instructions) VALUES('onions', 'a miracle vegetable', 'toss chopped onions with ingredients, air-fry at 350 for 15-30 minutes');

/* 6 */INSERT INTO Recipe (name, description, instructions) VALUES('peanut butter on a spoon', 'the perfect snack', 'grab your favorite spoon, dig into a jar of peanut butter!');

/* 7 */INSERT INTO Recipe (name, description, instructions) VALUES('cream cheese frosting', 'the only frosting that matters', 'mix together ingredients, put on cake, brownies, or enjoy with some pretzels!');

/* 8 */INSERT INTO Recipe (name, description, instructions) VALUES('boiled water', 'you may need it', 'put water in a saucepan or pot, set burner on high, add olive oil and/or salt to taste, its boiling when its bubbling like cRaZy');

/* boiled egg */
/* the first number in the value parameter stands for the recipe_id, which in this case, would be "boiled egg",
	the second value parameter is the ingredient(s) needed, for example, "egg", 
	the third value parameter is a measurement (if you need a measurement)
	the fourth value parameter is the number of measurement needed, for example 1 tablespoon. but not this example. */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

/* chocolate cake */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);

/* peanut butter pie */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (3, 7, 6, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (3, 8, 6, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (3, 9, 6, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (3, 10, 1, 1);

/* snickerdoodles */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (4, 1, 4, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (4, 3, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (4, 6, 1, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (4, 2, 3, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (4, 11, 3, 3);

/*onion*/
/*	how you read the indexed code is a litte weird, you are going to basically read it backward. 
	One, whole, onion. one being the last number in the array, whole referring to the measurement, and onion referring to ingredient. */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (5, 12, 4, 1); 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (5, 13, 3, 2);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (5, 2, 2, 1);

/* peanut butter on a spoon */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (6, 7, 3, 2);

/*cream cheese frosting*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (7, 8, 6, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (7, 10, 1, 2);

/* boiled water */
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)	VALUES (8, 14, 7, 2);


/* get all the ingredients with names */ 
SELECT r.name AS 'Recipe', r.instructions, ri.amount AS 'Amount', mu.name AS 'Unit of Measure', i.name AS 'Ingredient' 
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id;

/*get a list of recipes */ 
SELECT * from Recipe

/*
get a specific ingredient 
*/ 

SELECT *
From Recipe r
JOIN RecipeIngredient ri on ri.recipe_id = r.id  
JOIN Ingredient i on i.id = ri.ingredient_id 
WHERE i.name = "Peanut Butter"

/*
update recipe
*/
UPDATE Ingredient
SET Ingredient = 'water'
WHERE ingredient_id = 14;
