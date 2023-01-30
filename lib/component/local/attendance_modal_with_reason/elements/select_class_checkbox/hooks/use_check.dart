final List<Map<String, dynamic>> selectedClass = [];

void handleCheckbox(Map<String, dynamic> e) {
  if (selectedClass.contains(e)) {
    selectedClass.remove(e);
    //print(selectedClass);
  } else {
    // 選択されたらリストに追加する
    selectedClass.add(e);
    //print(selectedClass);
  }
}
