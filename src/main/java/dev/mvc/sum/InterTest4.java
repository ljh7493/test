package dev.mvc.sum;
 
interface Travel{
  public abstract void trip();
}
 
class America implements Travel{
  @Override
  public void trip(){
    System.out.println("�̱� ������ ó�� �Ϸ� �մϴ�.");
  }
}
 
class  Singpore implements Travel{
  public void trip(){
    System.out.println("�̰��� ������ ó�� �Ϸ� �մϴ�.");
  }
}
 
class Japan implements Travel{
  public void trip(){
    System.out.println("�Ϻ� ������ ó�� �Ϸ� �մϴ�.");
  }
}
 
class China implements Travel{
  public void trip(){
    System.out.println("�߱� ������ ó�� �Ϸ� �մϴ�.");
  }
}
 
public class InterTest4 {
 
  public static void main(String[] args) {
    Travel travel = new America();
    travel.trip();
    travel = new America();
    travel.trip();
    travel = new Singpore();
    travel.trip();
    travel = new Japan();
    travel.trip();
    travel = new China();
    travel.trip();
  }
}