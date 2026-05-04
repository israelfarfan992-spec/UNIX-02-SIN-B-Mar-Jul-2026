 
import crypt # Imports the crypt module, which provides functions for hashing passwords
password = 'micontraseña123'
salt1 = crypt.mksalt(crypt.METHOD_SHA512) # Generates a random salt using the SHA-512 method
salt2 = crypt.mksalt(crypt.METHOD_SHA512) # Generates another random salt using the SHA-512 method
hash1 = crypt.crypt(password, salt1) # Hashes the password using the first salt
hash2 = crypt.crypt(password, salt2) # Hashes the password using the second
print('salt1:', salt1) # Prints the first salt
print('hash1:', hash1 [:50]) # Prints the first hash
print()
print('salt2:', salt2) # Prints the second salt
print('hash2:', hash2 [:50]) # Prints the second hash
print() 
print('son iguales?', hash1 == hash2) # Compares the two hashes and prints whether they are the same or not