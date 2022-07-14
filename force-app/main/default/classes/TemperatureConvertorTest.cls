@isTest
public class TemperatureConvertorTest {

    @isTest static void testWarmTemp()
    {
        decimal celsius=TemperatureConvertor.fahrenheitToCelsius(70);
        System.assertEquals(20.11, celsius);
    }
 @isTest static void testFreezingPoint()
 {
    decimal celsius= TemperatureConvertor.fahrenheitToCelsius(32);
     system.assertEquals(0, celsius);
 }
@isTest static void testBoilingPoint()
{
     decimal celsius= TemperatureConvertor.fahrenheitToCelsius(212);
     system.assertEquals(100, celsius, 'Boiling Point temp is not expected');
}
}