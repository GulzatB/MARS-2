public class factorialX {
 
    public Decimal height; 
    public Decimal length; 
    public Decimal width; 
    
//A.multiplying two numbers
public static Integer twoNum (Integer num1, integer num2)
{
  Integer result=num1*num2;   
  return result;
}

//B.converting km to miles
public static decimal kmToMile (decimal km)
{
  decimal convert = km * 0.609344;   
  return convert;
}
    
//C.converting miles to km
public static decimal mileToKm (decimal mile)
{
  decimal miles = mile * 1.6;   
  return miles;
}
    
//D.calculating cube volume
public Decimal cube()
{
  return height*length*width;        
}

//E.calculating the area of a circle
public static Decimal CircleOfArea (Decimal radius)
{
  Decimal circle=(3.14*radius*2);
  return circle;
}

//F.calculating factorial of X    
public static integer factorial(integer num)
{
    integer fact=1;
    for(integer i=1; i<=num; i++) {
        fact=fact*i;
    } 
    return fact;
} 
}