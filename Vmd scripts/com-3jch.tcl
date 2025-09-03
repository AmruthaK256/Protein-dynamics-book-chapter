set sel [atomselect top "resid 32 36 37 38 39 57 58 80 81 103 104 133 134 160 163 164 165 239 241 243 244 245 and chain A"]
set com [measure center $sel weight mass]
graphics top sphere [list 220.9659423828125 195.6349639892578 146.2762451171875] radius 2.0


set sel [atomselect top "resid 32 36 37 38 39 57 58 80 81 103 104 133 134 160 163 164 165 239 241 243 244 245 and chain B"]
set com [measure center $sel weight mass]
graphics top sphere [list 182.57147216796875 165.28977966308594 118.09766387939453] radius 2.0

set sel [atomselect top "resid 32 36 37 38 39 57 58 80 81 103 104 133 134 160 163 164 165 239 241 243 244 245 and chain C"]
set com [measure center $sel weight mass]
graphics top sphere [list 142.7347412109375 141.37474060058594 129.11468505859375] radius 2.0

set sel [atomselect top "resid 32 36 37 38 39 57 58 80 81 103 104 133 134 160 163 164 165 239 241 243 244 245 and chain D"]
set com [measure center $sel weight mass]
graphics top sphere [list 147.7360076904297 186.34815979003906 121.20246124267578] radius 2.0

set sel [atomselect top "resid 32 36 37 38 39 57 58 80 81 103 104 133 134 160 163 164 165 239 241 243 244 245 and chain E"]
set com [measure center $sel weight mass]
graphics top sphere [list 179.3502197265625 207.27801513671875 125.58302307128906] radius 2.0
