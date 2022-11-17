class Budget {
  final String judul;
  final String nominal;
  final String jenis;

  const Budget(this.judul, this.nominal, this.jenis);
}

class ListBudget {
  static List<Budget> list = [];
  void append(Budget newBudget) {
    list.add(newBudget);
  }
}
