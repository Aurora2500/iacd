local json = require("dkjson")

dofile("data.txt")

local data = json.encode(data, {indent = true})

print(data)