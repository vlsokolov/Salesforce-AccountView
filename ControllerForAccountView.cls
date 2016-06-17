public class ControllerForAccountView
{    
    public List<wrap> wrappList{get;set;}   
    public List<wrap> MyResults{get;set;}
   
    public ControllerForAccountView()
    {
        wrappList = new list<wrap>();
        List<Account> accounts = [SELECT Name FROM Account];
        for (Account acc: accounts)
        {
          	wrap first = new wrap();
            first.name = acc.Name;
            first.isSelected = false;
            wrappList.add(first);
        }
    }
    
    public class wrap{
        public string name{get;set;}
        public boolean isSelected{get;set;}        
    }
    
    public void processWrapps()
    {
       myResults = new List<wrap>();
       for(wrap item:wrappList)
        {
            if(item.isSelected)
            {
                myResults.add(item);
            }
        }
    }
}