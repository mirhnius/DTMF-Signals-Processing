# DTMF-Signals-Processing
Tis project aims to analyze Dual Tone Multi Frequency signals in both frequency and time domains using Fourier Transform and Signal Spectrum in MATLAB

Dual Tone Multi Frequency, or DTMF as it is popularly known, is the technical term for the sound frequencies produced when a telephonic key is pressed. DTMF, also known as touch tone, was primarily used for telephone signaling to and from the local exchange, though today it finds several applications in the field of telecommunications and call centers.

A dual-tone (two tones with different frequencies) is assigned to each key in the telephone – one low frequency and another high frequency – that are played simultaneously when a key is pressed. This combination of two tones makes it nearly impossible to reproduce by the human voice.
Each of the four rows of keys in a telephone is assigned a low frequency tone and each of the three columns is assigned a high frequency tone. A fourth column of keys labeled as A, B, C, and D is optional and is mostly used in secure networks.

* ### DTMF Frequencies
   There are sixteen DTMF signals, each of which is made up of two tones from eight different frequency signals. Twelve of these are commonly used by consumers with four being reserved for military use or use by exchanges. The keys A, B, C, D are usually absent from telephone sets used in homes and offices. These keys are system tones used for configuring telephone exchanges and to carry out special functions. The DTMF keypad for consumer use is designed in a four‐row by three‐ column matrix. Each dial row is represented by a low tone frequency and each column by a high tone frequency.
   
   The frequencies used are 697 Hz, 770 Hz, 852 Hz, 941 Hz, 1209 Hz, 1336 Hz, 1477Hz, and 1633 Hz. The frequencies were carefully chosen in such a way as to prevent harmonics. Thus, one can notice that no frequency is a multiple of another and the difference or sum between any two frequencies is not equal to any other frequency. The pair of tones represents the digit or symbol at the intersection of the row and column. For example, if the digit 5 has to be sent, the frequencies transmitted are 1336 Hz and 770 Hz in a sinusoidal combination.
    
<p align="center">
  
<img src="https://user-images.githubusercontent.com/40741680/125466009-0627ea1d-1066-46e2-b60a-32e8443a95d2.png" width="600" height="461">

   <img src="https://user-images.githubusercontent.com/40741680/125467252-d048eb19-2559-4c7d-84cf-1055f1d358e1.jpg" width="900" height="400">
 </p>
