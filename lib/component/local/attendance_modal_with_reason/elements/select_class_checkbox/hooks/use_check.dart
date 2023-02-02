final List<Map<String, dynamic>> dailyClass = [
  {'period': '1限', 'className': 'UI/UX', 'selected': false},
  {'period': '2限', 'className': 'UI/UX', 'selected': false},
  {'period': '3限', 'className': 'AWSプラクティショナー', 'selected': false},
  {'period': '4限', 'className': 'AWSプラクティショナー', 'selected': false},
  {'period': '5限', 'className': 'マーケティング', 'selected': false},
  {'period': '6限', 'className': 'マーケティング', 'selected': false},
];

final List<Map<String, dynamic>> selectedClass = [];

void handleSelectedClass(Map<String, dynamic> e) {
  if (selectedClass.contains(e)) {
    selectedClass.remove(e);
  } else {
    selectedClass.add(e);
  }
}
