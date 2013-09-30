# depth - depth of the well
# size - maximum diameter
# height - "heights" of the disc pack (quantity of disc to throw)
depth = 19; height = 15; size = 30

# well[0] - top of the well
# discs[0] - first disc to throw
well = Array.new; depth.times {well << rand(size)+11}
discs = Array.new; height.times {discs << rand(size)+1}

print well, "\n", discs, "\n"

# normalizing Well
# example:
# original: [5, 10, 8, 9, 5, 2, 9, 2, 1, 4]
# will be:  [5,  5, 5, 5, 5, 2, 2, 2, 1, 1]
tmp = well[0]
for i in 1..depth-1 
 well[i] > tmp ? well[i] = tmp : tmp = well[i]
end

print well, "\n", discs, "\n"

# setting indexes to the bottom of the well and to the first disc
# quantity - quantity of discs that may have been throwed (is it correct phrase in English?)
w = depth - 1
d = 0
quantity = 0 

# let the story begin
# I bet you didn't expect such loop as 'times', did you? :)
depth.times {
 if (d<=height-1) && (discs[d] <= well[w])
  then (w -= 1; d += 1; quantity += 1)
  else (w -= 1)
 end
}

puts quantity

# same as above
w = depth - 1
d = 0
quantity = 0 

depth.times {(d += 1; quantity += 1) if (d<=height-1) && (discs[d] <= well[w]); w -= 1}

puts quantity

#same as above 2
w = depth - 1
d = 0
quantity = 0 

depth.times { (d<=height-1) && (discs[d] <= well[w]) ? (w -= 1; d += 1; quantity += 1) : w -= 1}
puts quantity