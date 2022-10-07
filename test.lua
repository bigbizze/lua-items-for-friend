



items = {
    StarFruit = {
        id = "StarFruit", 
        gem_cost = 50, 
        weight = 66
    }, 
    StarFruitEpic = {
        id = "StarFruitEpic", 
        gem_cost = 300, 
        weight = 66
    }, 
    LuckPotion = {
        id = "LuckPotion", 
        gem_cost = 200, 
        weight = 66
    }, 
    star_remnant = {
        id = "star_remnant", 
        gem_cost = 400, 
        weight = 100
    }
}

-- defining the column names for the csv
out_csv_str = "id,gem_cost,weight"

-- going through each item in the array
for k, v in pairs(items) do
    -- writing its properties into the csv format for a row
    interp = string.format("%s,%s,%s", v["id"], v["gem_cost"], v["weight"])

    -- combining the existing string (the first %s below), and the next row of items created
    -- above together and separating with a newline character
    out_csv_str = string.format("%s\n%s", out_csv_str, interp)
end

print(out_csv_str)

-- write the resulting string to a file
filewrite = io.open("items.csv", "w")
filewrite:write(out_csv_str)
filewrite:close()
