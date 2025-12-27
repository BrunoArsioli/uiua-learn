# Convert a DNA strand to its RNA complement
# RNA ? DNA
# "try (f | g | h | j)" functions 
# on every character of the inpout array (i.e. "rows")
ToRna ←  rows try ( @G un @C | @C un @G | @A un @T | @U un @A)

