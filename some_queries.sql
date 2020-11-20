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
