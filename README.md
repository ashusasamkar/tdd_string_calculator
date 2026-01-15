# string_calculator_tdd

# String Calculator – Flutter (TDD + Clean Architecture + BLoC)

A Flutter implementation of the classic **String Calculator TDD **, built using **Test-Driven Development**, **Clean Architecture**, and **BLoC (Cubit)**.

This project demonstrates how to write business logic first, drive development using tests, and keep UI thin and reactive.

---

## ✨ Features

* ✅ Strict **TDD** approach
* ✅ **Clean Architecture** (data / domain / presentation)
* ✅ **BLoC (Cubit)** for state management
* ✅ Fully unit-tested business logic
* ✅ Supports custom delimiters & new lines
* ✅ Proper exception handling for negative numbers
* ✅ Simple Flutter UI for manual testing

---
## 🔹 Dependency Injection (Injectable)

This project uses **Injectable with GetIt** for dependency injection to manage object creation, improve testability, and follow clean architecture principles.

---

### 📦 Libraries Used
- `get_it` – Service locator
- `injectable` – Dependency injection with code generation
- `injectable_generator` & `build_runner` – For generating DI setup

---

## String Calculator Rules

Method signature:

```dart
int add(String numbers)
```

### Supported cases

| Input        | Output |
| ------------ | ------ |
| `""`         | `0`    |
| `"1"`        | `1`    |
| `"1,5"`      | `6`    |
| `"1,2,3,4"`  | `10`   |
| `"1\n2,3"`   | `6`    |
| `"//;\n1;2"` | `3`    |

### Negative numbers

* Throws an exception
* Message format:

```
negative numbers not allowed -2,-3
```

---

## Project Architecture

```
lib/
 ├── core/
 │   └── error/
 │       └── negative_number_exception.dart
 ├── data/
 │   └── calculators/
 │       └── string_calculator.dart
 ├── domain/
 │   └── usecases/
 │       └── add_numbers_usecase.dart
 ├── presentation/
 │   ├── cubit/
 │   │   └── string_calculator_cubit.dart 
     |   └── string_calculator_state.dart
 │   └── pages/
 │       └── string_calculator_page.dart
 └── main.dart

test/
 └── string_calculator_test.dart
```

---

## Test-Driven Development Flow

1. Write a failing test (empty string)
2. Write minimal code to pass
3. Refactor
4. Add next test (single number)
5. Repeat until all rules are covered

All business rules are verified via **unit tests** before UI integration.

---

## Running the Project

### Install dependencies

```bash
flutter pub get
```

### Run unit tests

```bash
flutter test
```

### Run the app

```bash
flutter run
```

---

## 📱 UI Usage

* Enter numbers using:

    * Commas: `1,2,3`
    * New lines (press Enter):

      ```
      1
      2,3
      ```
    * Custom delimiter:

      ```
      //; 
      1;2
      ```
* Press **Calculate**
* Result or error message is displayed

> Note: Typing `\n` literally is not the same as a real newline. The UI supports multiline input.

---

## Common Pitfalls Explained

### Why `expect(fn(), throwsA())` fails

The function is executed **before** the matcher runs.

### Correct way

```dart
expect(() => fn(), throwsA(...));
```

This allows the test framework to catch the exception.

---

### English

> I implemented the String Calculator using strict TDD. Business logic is pure Dart and fully unit tested. Clean Architecture ensures separation of concerns, and BLoC manages UI state reactively. The UI remains thin, and all validation resides in the domain layer.

---

## Possible Extensions

* Multiple custom delimiters: `//[*][%]\n1*2%3`
* Ignore numbers greater than 1000
* Widget tests for UI
* Convert Cubit → Full BLoC (Events + States)

---

## 👤 Author

**Ashvinee Sasamkar**
Senior Flutter Developer

