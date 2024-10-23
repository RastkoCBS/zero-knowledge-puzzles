pragma circom 2.1.4;

include "../node_modules/circomlib/circuits/poseidon.circom";

// Go through the circomlib library and import the poseidon hashing template using node_modules
// Input 4 variables,namely,'a','b','c','d' , and output variable 'out' .
// Now , hash all the 4 inputs using poseidon and output it . 
template poseidon() {
   signal input a;
   signal input b;
   signal input c;
   signal input d;
   signal output out;

   component temp = Poseidon(4);

   temp.inputs <== [a, b, c, d];

   out <-- temp.out; 
}

component main = poseidon();