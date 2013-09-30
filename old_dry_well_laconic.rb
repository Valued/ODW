depth, height, size = 19, 15, 30

well = Array.new; depth.times {well << rand(size)+11}
discs = Array.new; height.times {discs << rand(size)+1}

print well, "\n", discs, "\n"

tmp = well[0]
for i in 1..depth-1; well[i] > tmp ? well[i] = tmp : tmp = well[i]; end

print well, "\n", discs, "\n"

w, d, quantity = depth - 1, 0, 0 
depth.times {(d += 1; quantity += 1) if (d<=height-1) && (discs[d] <= well[w]); w -= 1}

puts quantity