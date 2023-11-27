public with sharing class demotest {
    public demotest() {
        //Create a list and add elements in it
      List<String> colors= new List<String>{'Red','Green','Blue'};
        List<String> moreColors=new List<String>();
       // moreColors.add('Violet');
       // moreColors.add('Yellow');
       // System.debug(moreColors);
       //get element from the list
       String color1 = moreColors.get(0);
       String color2 = moreColors[0];
       System.assertEquals(color1,color2);
       //iterate over a list to read elements
       for (Integer i=0;i<colors.Size();i++) {
           System.debug(colors[i]);
       }




    }
}