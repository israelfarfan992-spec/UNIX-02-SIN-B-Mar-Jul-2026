gpg --list-secret-keys --keyid-format=long // This command lists the secret keys in GPG with their key IDs in long format.
gpg --armor --export-secret-keys// This command exports the secret keys in ASCII armored
gpg --armor --export-secret-keys > mi_llave_privada.asc // This command exports the secret keys in ASCII armored format and saves it to a file named "mi_llave_privada.asc".
gpg --list-keys // This command lists the public keys in GPG.
gpg --import llave_de_isaac.asc // This command imports a public key from a file named "llave_de_isaac.asc".
