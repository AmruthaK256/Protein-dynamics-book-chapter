# Coordinates of the spheres
set A [list 220.9659423828125 195.6349639892578 146.2762451171875]
set B [list 182.57147216796875 165.28977966308594 118.09766387939453]
set C [list 142.7347412109375 141.37474060058594 129.11468505859375]
set D [list 147.7360076904297 186.34815979003906 121.20246124267578]
set E [list 179.3502197265625 207.27801513671875 125.58302307128906]

# Function to calculate the Euclidean distance
proc calc_distance {point1 point2} {
    set dx [expr {[lindex $point1 0] - [lindex $point2 0]}]
    set dy [expr {[lindex $point1 1] - [lindex $point2 1]}]
    set dz [expr {[lindex $point1 2] - [lindex $point2 2]}]
    return [expr {sqrt($dx*$dx + $dy*$dy + $dz*$dz)}]
}

# Calculate distances between points
set distance_AB [calc_distance $A $B]
set distance_BC [calc_distance $B $C]
set distance_CD [calc_distance $C $D]
set distance_DE [calc_distance $D $E]
set distance_EA [calc_distance $E $A]

# Print distances
puts "Distance between A-B: $distance_AB Å"
puts "Distance between B-C: $distance_BC Å"
puts "Distance between C-D: $distance_CD Å"
puts "Distance between D-E: $distance_DE Å"
puts "Distance between E-A: $distance_EA Å"

# Visualize the lines between the points
graphics top line $A $B width 2
graphics top line $B $C width 2
graphics top line $C $D width 2
graphics top line $D $E width 2
graphics top line $E $A width 2

