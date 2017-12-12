package dev.mvc.sum;
 
interface URL{
  public abstract void connect();
}
 
class Daum implements URL{
  @Override
  public void connect() {
    System.out.println("www.daum.net�� �����մϴ�.");    
  }
}
 
class KMA implements URL{
  @Override
  public void connect() {
    System.out.println("www.kma.go.kr�� �����մϴ�.");    
  }
}
 
class Google implements URL{
  @Override
  public void connect() {
    System.out.println("www.google.co.kr�� �����մϴ�.");
  }
}
 
 
public class InterTest1 {
  public static void main(String[] args) {
    //URL url = new URL();// interface�� ��ü�� ���� �� ����
    URL url = new Daum();//�ڱ� �ڽ��� ������ ������(ī�᷹�°���.. ������) 
    url.connect();
    url = new KMA();
    url.connect();
    url = new Google();
    url.connect();
  }
 
}