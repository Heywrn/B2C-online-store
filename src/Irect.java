
public interface Irect {
        double w=3,l=4;  
        void compute();
      }
     class Crect implements Irect{
        public void compute(){
          System.out.println(
                "�߳��ֱ�Ϊ3��4�ĳ��������Ϊ��"+w*l);
        }
      }
      
