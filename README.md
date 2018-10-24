# Cryptography
This project was a school lab which employs you a simple RSA encryption and decryption code in MATLAB. This project consists of 4 functions: Binary_Convert, Modular_Exp, EnCode, and DeCode.

Binary_Convert takes any base 10 number and converts it to it's binary equivalent. This is later used in encryption and decryption.

Modular_Exp performs modular exponentiation. This too is later used during our encryption and decryption.

We have the EnCode function which uses RSA encryption to encode a message. Our public key paramters are n = 362783 and e = 19. The EnCode function takes an input resembling the following : Code = EnCode( 'STOP' , 362783, 19). 

The DeCode function uses RSA decryption to decode messages. Using the fact that n = p · q where p = 887 and q = 409, we find the value of the private key (d) to be 304411. The DeCode function takes an input resembling the following: Message = DeCode(Code, 362783, d).


