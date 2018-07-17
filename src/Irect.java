
public interface Irect {
        double w=3,l=4;  
        void compute();
      }
     class Crect implements Irect{
        public void compute(){
          System.out.println(
                "边长分别为3和4的长方形面积为："+w*l);
        }
      }
      
