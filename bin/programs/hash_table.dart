class Hashtable {
  List table = [];
  int size = 0;
  Hashtable(this.size) {
    table = List.filled(size, []);
  }

  hash(key) {
    num total = 0;
    for (var i = 0; i < key.length; i++) {
      total += key.codeUnitAt(i);
    }
    return total % size;
  }

  set(key, value) {
    var index = hash(key);
    if (table[index] == null) {
      table[index] = [
        [key, value]
      ];
    } else {
      var bucket = List.from(table[index]); // Create a copy of the bucket
      var samekey = bucket.firstWhere(
        (item) => item[0] == key,
        orElse: () => null,
      );
      if (samekey != null) {
        samekey[1] = value;
      } else {
        bucket.add([key, value]);
        table[index] = bucket; // Update the table with the modified bucket
      }
    }
  }

  get(key) {
    var index = hash(key);
    // return table[index];
    var bucket = table[index];
    if (bucket != null) {
      var val = bucket.firstWhere(
        (item) => item[0] == key,
        orElse: () => null,
      );
      if (val != null) {
        return val[1];
      }
    }
    print('nothing found');
  }

  remove(key) {
    var index = hash(key);
    // table[index] = null;
    var bucket = table[index];
    if (bucket != null) {
      var val = bucket.firstWhere(
        (item) => item[0] == key,
        orElse: () => null,
      );
      if (val != null) {
        bucket.removeRange(bucket.indexOf(val), 1);
      } else {
        print('no elements found');
      }
    }
  }

  display() {
    for (int i = 0; i < table.length; i++) {
      if (table[i] != null) {
        // table[i].forEach((item) => {print('$i => ${item[0]} : ${item[1]}')});
        print('$i => ${table[i]}');
      }
    }
  }
}

void main(List<String> arguments) {
  Hashtable table = Hashtable(100);
  table.set('name', 'hijas');
  table.set('mane', 'hashiq');
  table.set('gae', 14);
  table.set('gea', 10);
  table.remove('age');
  table.display();
}