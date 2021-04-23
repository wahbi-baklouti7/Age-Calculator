import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Age {
  
  static int days;
  static int months;
  static int years;
  // int currentDay;
  // int currentMonth;
  // int currentYear;

  // int currentDay = int.parse(DateFormat("dd").format(DateTime.now()));
  // int currentMonth = int.parse(DateFormat("MM").format(DateTime.now()));
  // int currentYear = int.parse(DateFormat("yyyy").format(DateTime.now()));

  // get the exact days in the year
  _exactDay(int month, int year) {
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

  static getYears(int birthYear, int currentYear) {
    years = currentYear - birthYear;
    return years;
  }

  static getMonths(int birthMonth, int currentMonth) {
    if (currentMonth - birthMonth >= 0) {
      months = currentMonth - birthMonth;
    } else {
      months = ((currentMonth + 12) - birthMonth);
      Age.years -= 1;
    }
    return months;
  }

  static getDays(int birthDay, int currentDay) {
    if (currentDay - birthDay >= 0) {
      days = (currentDay - birthDay);
    } else {
      days = ((currentDay - birthDay) + birthDay);
      Age.months -= 1;
    }
    return days;
  }

  static getNextYears() {}

  static getNextMonths(int currMonth, int birthMonth) {
    int nextMonth = 0;
    if (birthMonth - currMonth >= 0) {
      nextMonth = birthMonth - currMonth;
    } else {
      nextMonth = (birthMonth + 12 - currMonth) - 1;
    }
    return nextMonth;
  }

  static getNextDays(int currDays, int birthDay) {
    int nextDays;
    if (birthDay - currDays >= 0) {
      nextDays = (birthDay - currDays);
    } else {
      nextDays = ((birthDay + 31) - currDays) - 1;
    }
    return nextDays;
  }

  static ageCalculator(int year) {
    int currentYear = DateTime.now().year;
    int resutl = currentYear - year;
    return resutl.toString();
  }
}
