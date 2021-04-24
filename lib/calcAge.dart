import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Age {
  static int days;
  static int months;
  static int years;

  static int currentDay = int.parse(DateFormat("dd").format(DateTime.now()));
  static int currentMonth = int.parse(DateFormat("MM").format(DateTime.now()));
  static int currentYear = int.parse(DateFormat("yyyy").format(DateTime.now()));
  static int _days3 = _exactDay(currentMonth, currentYear);

  // get the exact days in the year
  static _exactDay(int month, int year) {
    int daysEx;
    if (month == 1 ||
        month == 3 ||
        month == 5 ||
        month == 7 ||
        month == 8 ||
        month == 10 ||
        month == 12) {
      daysEx = 31;
    } else if (month == 4 || month == 6 || month == 9 || month == 11) {
      daysEx = 30;
    } else {
      if (year % 4 == 0) {
        daysEx = 29;
      } else {
        daysEx = 28;
      }
    }
    return daysEx;
  }

  static getYears(int birthYear) {
    years = currentYear - birthYear;
    return years;
  }

  static getMonths(int birthMonth) {
    if (currentMonth - birthMonth >= 0) {
      months = currentMonth - birthMonth;
    } else {
      months = ((currentMonth + 12) - birthMonth);
      years -= 1;
    }
    return months;
  }

  static getDays(int birthDay) {
    if (currentDay - birthDay >= 0) {
      days = (currentDay - birthDay);
    } else {
      days = ((currentDay + _days3) - birthDay);
      if (months != 0) {
        months -= 1;
      }
    }
    return days;
  }

  static getNextYears() {}

  static getNextMonths(int birthMonth) {
    int nextMonth = 0;
    if (birthMonth - currentMonth >= 0) {
      nextMonth = birthMonth - currentMonth;
    } else {
      nextMonth = (birthMonth + 12 - currentMonth) - 1;
    }
    return nextMonth;
  }

  static getNextDays(int birthDay) {
    int nextDays;
    if (birthDay - currentDay >= 0) {
      nextDays = (birthDay - currentDay);
    } else {
      nextDays = ((birthDay + 31) - currentDay) - 1;
    }
    return nextDays;
  }

  static ageCalculator(int year) {
    int currentYear = DateTime.now().year;
    int resutl = currentYear - year;
    return resutl.toString();
  }
}
