//Write your own contracts here. Currently compiles using solc v0.4.15+commit.bbb8e64f.
pragma solidity ^0.5.0;

library mysuperLibrary1 {
  // ax ^ 2 + bx + c = 0
  function sqrt(int x) private pure returns (int y)   {
     if (x == 0) return 0;
     else if (x <= 3) return 1;
     int z = (x + 1) / 2;
     y = x;
     while (z < y)
     {
        y = z;
        z = (x / z + z) / 2;
    }
}

function D (int a,int b, int c) public pure returns( int) {
  return  b * b - 4 * a * c ;
 }

 function equation (int a, int b, int c) public pure returns (int, int) {
   int256 temp = D (a,b,c);
   require(!(temp < 0), "d less than zero!");

   if (temp > 0) {
     int256 x1 = (b*-1) + sqrt(temp)/2*a;
     int256 x2 = (b*-1) - sqrt(temp)/2*a;
     return (x1, x2);
  }
  if (temp == 0) {
    int256 x = (b*-1)/2*a;
    return (x,x);
  }
 }

}
