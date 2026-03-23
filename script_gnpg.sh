gpg --list-secret-keys --keyid-format=long // This command lists the secret keys in GPG with their key IDs in long format.
gpg --armor --export-secret-keys// This command exports the secret keys in ASCII armored
gpg --armor --export-secret-keys > mi_llave_privada.asc // This command exports the secret keys in ASCII armored format and saves it to a file named "mi_llave_privada.asc".
gpg --list-keys // This command lists the public keys in GPG.
gpg --import llave_de_isaac.asc // This command imports a public key from a file named "llave_de_isaac.asc".
gpg --list-keys // This command lists the public keys in GPG again to verify that the key from "llave_de_isaac.asc" has been imported successfully.
echo "tengo hambre"> doc_no_cifrado.txt // This command creates a text file named "doc_no_cifrado.txt" with the content "tengo hambre".
gpg --output doc_cifrado.txt.gpg --encrypt --recipient// This command encrypts the file "doc_no_cifrado.txt" for a specific recipient and saves the encrypted file as "doc_cifrado.txt.gpg". The recipient's email or key ID should be specified after the --recipient option.
gpg --decrypt doc_cifrado.txt.gpg // This command decrypts the file "doc_cifrado.txt.gpg" and displays its content.
gpg --output doc.txt --clearsign doc.txt.gpg // This command decrypts the file "doc.txt.gpg" and saves the decrypted content to a file named "doc.txt". The --clearsign option is used to create a clear-signed message, which includes both the original text and the signature.
gpg --verify micompa_doc_no_cifrado_firmado.txt // This command verifies the signature of the file "micompa_doc_no_cifrado_firmado.txt". It checks if the signature is valid and if it was created by a trusted key.