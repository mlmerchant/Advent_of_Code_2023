def touching_number_coordinates(x_location, y_location, grid_list):
    """Return a list of all x,y coordinates of touching numbers"""
    adjacent_cells = [(-1, 0), (1, 0), (0, -1), (0, 1), (-1, -1), (-1, 1), (1, -1), (1, 1)]
    number_list = []
    for adjacent_cell in adjacent_cells:
        new_x = x_location + adjacent_cell[0]
        new_y = y_location + adjacent_cell[1]
        try:
            if grid_list[new_x][new_y] in ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]:
                number_list.append((new_x, new_y))
        except IndexError:
            pass
    return number_list


all_number_lists = []

with open("test_input.txt") as file:
    input_data = file.read().split("\n")

grid = []
for line in input_data:
    grid.append(list(line))

x_len = len(grid)
y_len = len(grid[0])

for x in range(x_len):
    for y in range(y_len):
        if grid[x][y] == "*":
            temp = touching_number_coordinates(x, y, grid)
            if not temp == []:
                all_number_lists.append(temp)

print(all_number_lists)

# pick a coordinate and expand it, while doing so, remove it from the list.
# once you have the number, add it to a numbers list.
# check any remaining puts.  add those to the numbers list.
# if there are two numbers, times them together to get the "ratio".
# add that to the running total.



# Test input result is 467835
# Challenge input result is ???
print("")
