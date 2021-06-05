main(List<String> args) {
  //crea un objeto de tipo Student
  var student = Student();
  //colocale un valor a la variable name, se accede a variables y metodos
  //mediante . (punto)
  student.name="Felipe Angeles";
  //Accedemos al método getStudentName e imprimimos valor de retorno
  print(student.getStudentName());
}
class Student{
  var name;
  var roll;
  var age;
  //Declaracion del método
  getStudentName(){
    return name;
  }
}