public class TemperatureConvertor 
{

    public static Decimal fahrenheitToCelsius(Decimal fh)
    {
        Decimal cs =(fh-32)*5/9;
        system.debug('temperature in Celsius= '+cs.setScale(2));
        return cs.setScale(2);
    }
}