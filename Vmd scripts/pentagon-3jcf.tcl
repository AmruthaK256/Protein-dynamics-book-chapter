# Coordinates of the spheres
set A [list 182.74221801757813 132.57760620117188 115.69721984863281]
set B [list 140.0846405029297 135.2446746826172 115.66902160644531]
set C [list 129.40374755859375 176.50636291503906 115.66511535644531]
set D [list 165.43792724609375 199.44081115722656 115.65675354003906]
set E [list 198.3706817626953 172.28933715820313 115.6883544921875]

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

# Midpoints for labels
set midpoint_AB [list [expr {([lindex $A 0] + [lindex $B 0]) / 2.0}] \
                      [expr {([lindex $A 1] + [lindex $B 1]) / 2.0}] \
                      [expr {([lindex $A 2] + [lindex $B 2]) / 2.0}]]
set midpoint_BC [list [expr {([lindex $B 0] + [lindex $C 0]) / 2.0}] \
                      [expr {([lindex $B 1] + [lindex $C 1]) / 2.0}] \
                      [expr {([lindex $B 2] + [lindex $C 2]) / 2.0}]]
set midpoint_CD [list [expr {([lindex $C 0] + [lindex $D 0]) / 2.0}] \
                      [expr {([lindex $C 1] + [lindex $D 1]) / 2.0}] \
                      [expr {([lindex $C 2] + [lindex $D 2]) / 2.0}]]
set midpoint_DE [list [expr {([lindex $D 0] + [lindex $E 0]) / 2.0}] \
                      [expr {([lindex $D 1] + [lindex $E 1]) / 2.0}] \
                      [expr {([lindex $D 2] + [lindex $E 2]) / 2.0}]]
set midpoint_EA [list [expr {([lindex $E 0] + [lindex $A 0]) / 2.0}] \
                      [expr {([lindex $E 1] + [lindex $A 1]) / 2.0}] \
                      [expr {([lindex $E 2] + [lindex $A 2]) / 2.0}]]

# Add labels for the distances above the lines
graphics top text $midpoint_AB "[format %.2f $distance_AB]"
graphics top text $midpoint_BC "[format %.2f $distance_BC]"
graphics top text $midpoint_CD "[format %.2f $distance_CD]"
graphics top text $midpoint_DE "[format %.2f $distance_DE]"
graphics top text $midpoint_EA "[format %.2f $distance_EA]"

