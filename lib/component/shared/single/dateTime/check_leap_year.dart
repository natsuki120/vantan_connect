//うるう年チェック
checkLeapYear(DateTime dateTimeNow) {
  if ((dateTimeNow.year % 100 == 0) && (dateTimeNow.year % 400 != 0)) {
    return false;
  } else if (dateTimeNow.year % 4 == 0) {
    return true;
  } else {
    return false;
  }
}
