spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

# Print every element in the grid

spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  while element_index < spice_rack[row_index].count do
    puts spice_rack[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end #=> nil

# prints out
```
Posh
Scary
Sporty
Paprika
Fajita Mix
Coriander
Parsley
Sage
Rosemary
```
##
# Gather some of the elements that match a given criterion into a new `Array`

spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

outer_results = []
row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  inner_results = []
  while element_index < spice_rack[row_index].count do
    # How to read the following line of code:
    #   Array at row_index
    #   Element of the inner array at element_index
    #   The first character of that element...
    if spice_rack[row_index][element_index][0] == "P"
      inner_results << spice_rack[row_index][element_index]
    end
    element_index += 1
  end
  outer_results << inner_results
  row_index += 1
end

outer_results #=> [["Posh"], ["Paprika"], ["Parsley"]]


# Gather all the elements to create a single value

guessing_game_grid = [
 [1, 2, 1, 7, 3],
 [2, 100, 15, 4, 18],
 [15, 16, 99, 1, 2, 11]
]

total = 0
row_index = 0
while row_index < guessing_game_grid.count do
  element_index = 0
  while element_index < guessing_game_grid[row_index].count do
    total += guessing_game_grid[row_index][element_index] # total = total +
    element_index += 1 # el_i = el_i + 1
  end
  row_index += 1
end
total #=> 297
