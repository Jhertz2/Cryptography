# Cryptography
This project was a school lab which employs you a simple RSA encryption and decryption code in MATLAB. Our public key paramters are n = 362783 and e = 19. The EnCode function takes an input resembling the following : Code = EnCode( 'STOP' , 362783, 19). Using the fact that n = p · q where p = 887 and q = 409, we find the value of the private key (d) to be 304411. The DeCode function takes an input resembling the following: Message = DeCode(Code, 362783, d).