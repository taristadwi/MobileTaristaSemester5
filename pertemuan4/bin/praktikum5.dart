void main(List<String> args) {
  //var record = ('first', a: 2, b: true, 'last');
  //print(record);

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  //print(tukar((1, 2)));

  //Record type annotation in a variable declaration:
  //(String, int) mahasiswa = ('Tarista Dwi Silvia', 2141720014);
  //print(mahasiswa);

  var mahasiswa2 = ('Tarista Dwi Silvia', a: 2141720014, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'Tarista Dwi Silvia'
  print(mahasiswa2.a); // Prints 2141720014
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
