advancement revoke @s only manic:technical/blindness/spook
advancement revoke @s only manic:technical/blindness/revenant
advancement revoke @s only manic:technical/blindness/mirage

execute if score #manic.difficulty manic.dummy matches 3 unless score #manic.blindness manic.dummy3 matches 1.. run effect give @s blindness 10
execute if score #manic.difficulty manic.dummy matches 2 unless score #manic.blindness manic.dummy3 matches 1.. run effect give @s blindness 7
execute if score #manic.difficulty manic.dummy matches 1 unless score #manic.blindness manic.dummy3 matches 1.. run effect give @s blindness 5