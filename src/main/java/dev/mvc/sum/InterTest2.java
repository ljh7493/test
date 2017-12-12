package dev.mvc.sum;
 
interface Shape{
  public abstract void draw();
}
 
class Circle implements Shape{
  @Override
  public void draw() {
    System.out.println("���� �׸��ϴ�.");
  }
}
 
class Square implements Shape{
  @Override
  public void draw() {
    System.out.println("�簢���� �׸��ϴ�.");
  }
}
 
class Triangle implements Shape{
  @Override
  public void draw() {
    System.out.println("�ﰢ���� �׸��ϴ�.");
  }
}
 
public class InterTest2 {
  public static void main(String[] args) {
    Shape shape = new Circle();
    shape.draw();
    shape = new Square();
    shape.draw();
    shape = new Triangle();
    shape.draw();
  }
}