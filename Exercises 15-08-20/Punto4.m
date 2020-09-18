% Ejercicios Crypto 15/08/2020
% Punto 4: Decrypt HRMVBNRADLDHKRMFLMFHRYFHFOF, was crypted with Shift Cipher with k = ?

clc

word = "VKCWKDOWKDSMKCCYXVKWECSMKNOVKBKJYX";
d_k_SCBF = Shift_Cipher_all_k(word)
d_k_SC = Shift_Cipher(word, 16)