# Write a function that adds two positive numbers. 
# You should not use + or any arithmetic operators.


# The only option left is to use bit operators

# 2 = 010
# 3 = 011     REAL
# --------
#     101
#
# 2 = 010
# 3 = 011     USING ANDS THEN SHIFT
# --------
#     100
#             
# 2 = 010
# 3 = 011     USING XOR
# --------
#     001     
#
#	If I add two binary numbers together but forget to carry, bit[i] will be 0 if bit[i] in a
#	and b are both 0 or both 1. This is an XOR.
# If I add two numbers together but only carry, I will have a 1 in bit[i] if bit[i-1] in a 
# and b are both 1’s. This is an AND, shifted
#
# XORing both results will yield the right number if there's nothing to carry

def add(number_1,number_2)
  no_carry = number_1 ^ number_2
  carries = (number_1 & number_2) << 1
  
  if carries.zero?
    puts no_carry
  else
    add(no_carry, carries)
  end
end