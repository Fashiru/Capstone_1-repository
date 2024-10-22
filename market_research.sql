SELECT MAX(`Nutrient value`)
AS 'MaximumValue'
From `file for cap`; 

SELECT MIN(`Nutrient value`)
AS 'MinimumValue'
From `file for cap`;

SELECT avg(`Nutrient value`)
AS 'AverageValue'
From `file for cap`;

SELECT `Ingredient description`
FROM  `file for cap`
WHERE `ingredient description` IN ('flour', 'milk', 'eggs', 'baking powder', 'sugar', 'butter', 'vanilla extract')
AND recipe_name LIKE '%pancake%';