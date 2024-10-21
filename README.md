 # String Calculator

This project provides a simple implementation of a **String Calculator** in Ruby, along with RSpec tests to verify its functionality. The calculator parses a string of numbers separated by specific delimiters, performs validations, and returns their sum.


## Installation

1. Ensure that **Ruby** is installed on your system. You can verify by running:
   ```bash
   ruby -v

2. Install **RSpec** to run the tests:
    ```bash
    gem install rspec

3. Clone the repository:
    ```bash
    git clone https://github.com/saikumarbandaru21/incubyte.git
    cd incbyte

## Features

- **Empty String Handling**:
  Returns 0 for an empty string input.

- **Multiple Delimiters Support**:
  - Default delimiter is a comma (`,`).
  - Supports custom delimiter specified at the start of the string (e.g., `"//;\n1;2"`).

- **New Line Support**:
  Handles `\n` as a delimiter.

- **Exception Handling**:
  - Raises an exception when negative numbers are present.
  - Displays all negative numbers in the exception message.

- **Sum Calculation**:
  Sums up all valid integers in the input string.


## Implementation Details

### Code Overview

### StringCalculator Class

- **Method**: `add(numbers)`
  - **Input**: A string of numbers separated by a delimiter.
  - **Output**: Sum of the numbers.

#### Logic:
1. Returns `0` for an empty string.
2. Detects custom delimiter if present (`//<delimiter>\n`).
3. Replaces new lines with the delimiter.
4. Splits the string into individual numbers and converts them to integers.
5. Validates the absence of negative numbers; raises an exception if found.
6. Returns the sum of the numbers.

## Running Tests

To run the tests, follow these steps:

1. Navigate to the project directory.
2. Execute the following command:
   ```bash
   rspec spec/string_calculator_spec.rb
