package dev.mvc.sum;
 
abstract class Fruit{
  public abstract void sale();
  public void start(){
    System.out.println("�Ǹ� �Խ�");
  };
}
 
class Apple extends Fruit{
  @Override
  public void sale() {
    System.out.println("����� �Ǹ��մϴ�.");    
  }
  @Override
  public void start() {
    System.out.println("��� �Խ�");    
  }
}
class Banana extends Fruit{
  //�������̵带 ������� ���� ���¿��� start �Լ��� ��Ÿ �߻�
  public void sale() {
    System.out.println("�ٳ����� �Ǹ��մϴ�.");    
  }
  public void starts() {
    System.out.println("�ٳ��� �Խ�");    //�ٳ��� �Խø� ���� ������ �ǸŰԽ÷� ����
  }
}
class Grape extends Fruit{
  @Override
  public void sale() {
    System.out.println("������ �Ǹ��մϴ�.");    
  }
  /*@Override//�������̵带 �����Ͽ� �θ� Ŭ������ �ش� �Լ��� �ִ��� Ȯ���ϰ� ���� ������ ���� �߻� 
  public void starts() {
    System.out.println("���� �Խ�");    
  }*/
}
 
public class InterTest3 {
  public static void main(String[] args) {
    Fruit fruit = new Apple();
    fruit.start();fruit.sale();
    fruit = new Banana();
    fruit.start();fruit.sale();
    fruit = new Grape();
    fruit.start();fruit.sale();
  }
 
}