depth, height, size = 19, 15, 30

well = Array.new(depth){ rand(size) + 11 }
discs = Array.new(height){ rand(size) + 1 }

print well, "\n", discs, "\n"

1.upto(depth-1) { |index| well[index] = well[index-1] if well[index] > well[index-1] }

#print well, "\n", discs, "\n"

well_index, discs_index, quantity = -1, 0, 0 
depth.times { (discs_index += 1; quantity += 1) if (discs_index <= height-1) && (discs[discs_index] <= well[well_index]); well_index -= 1 }

print discs.slice(0, quantity), "\n"
puts quantity
