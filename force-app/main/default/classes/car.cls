public class car {

    public class yearException extends Exception {}
    
    string name;
    string brand;
    Integer year;
    
    public car (String name, String brand,Integer year)
    {
        this.name=name;
        if(year<2014){
            throw new yearException('Minimum year is 2014');
                
        }
    this.year=year;
    this.brand=brand;
    }
    
}