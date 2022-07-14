public class RectanglePi {
    
    public integer height;
    public integer length;

//A.calculating rectangle's perimetr 
public Integer perimRec ()
{
    return length+height+length+height;        
}
    
//B.area of rectangle 
public Integer areaRec()
    {
        return length*height;
    }
}