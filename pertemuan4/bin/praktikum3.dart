void main() {
  var gifts = {
    //Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Tarista Dwi Silvia',
    'nim': '2141720014'
  };
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    0: 'Tarista Dwi Silvia',
    1: '2141720014'
  };
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';
  mhs1['nama'] = 'Tarista Dwi Silvia';
  mhs1['nim'] = '2141720014';
  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';
  mhs2[0] = 'Tarista Dwi Silvia';
  mhs2[1] = '2141720014';
  print(mhs1);
  print(mhs2);
  print(gifts);
  print(nobleGases);
}
