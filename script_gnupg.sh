"block A"
which gpg // Check if gpg is installed
gpg --version // Check the version of gpg
gpg --list-keys // List all the keys in the keyring
gpg --list-secret-keys --keyid-format=long // List all the secret keys with long key IDs
gpg --import mi_llave_publica_venegas.asc // Import a public key from a file
echo "este mensaje es secreto" >doc_no_cifrado.txt
gpg --encrypt --recipient israelfarfan99@gmail.com doc_cifrado.tx
gpg -- decrypt --recipient// Decrypt the file using the recipient's email 
gpg --sign doc_no_cifrado.txt.gpg// Sign the file with the user's private key
gpg --clearsign doc_no_cifrado.txt.gpg// Clear sign the file, which creates a human-readable signature
gpg --verify doc_no_cifrado.txt.gpg.gpg// Verify the signature of the file
gpg --verify doc_no_cifrado_sing.txt.gpg// Verify the signature of the clear-signed file
gpg --verify doc_no_cifrado_detach.txt.gpg// Verify the signature of the detached signature file
gpg --edit-key cristopheribujes@gmail.com// Edit the key associated with the email address

