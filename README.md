# Math Puzzles

srat.md - Self-referential aptitude test by Jim Propp  
eight.sh - Self-referential aptitude test by Bob Kraus  
zebra.sh - Who owns the zebra puzzle  
soduku.sh - For solving soduku puzzles  

# More on soduku.sh  
  
1. Uses doubles strategy  
If column, row, or cube has the following:  
1 3 6 28 278 5 9 28 2478  
Then it has a double: 28 in the 4th and 8th position  
There are only two solutions  
Either it's:  
1 3 6 2 278 5 9 8 2478  
or  
1 3 6 8 278 5 9 2 2478  
Therefore the rest can't be 2 or 8 so the new line is  
1 3 6 28 7 5 9 28 47  
Which can be further simplified to  
1 3 6 28 7 5 9 28 4  
  
2. Uses unique strategy  
If column, row, or cube has the following:  
123 34 127 6 5 1234 8 9 234  
Then it has a unique: The 7 is only in the 3rd position  
So that one has to be 7  
So the new line is  
123 34 7 6 5 1234 8 9 234  
  

