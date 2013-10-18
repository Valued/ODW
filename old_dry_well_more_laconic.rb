depth, height, size = 19, 15, 30

well = Array.new(depth){ rand(size) + 11 }
discs = Array.new(height){ rand(size) + 1 }

print well, "\n", discs, "\n"

1.upto(depth-1) { |i| well[i] = well[i-1] if well[i] > well[i-1] }

#print well, "\n", discs, "\n"

w, d, quantity = -1, 0, 0 
depth.times { (d += 1; quantity += 1) if (d <= height-1) && (discs[d] <= well[w]); w -= 1 }

print discs.slice(0, quantity), "\n"
puts quantity