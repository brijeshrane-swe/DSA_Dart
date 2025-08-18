import 'dart:io';

/// Problem Statement: Given an integer N, print the following pattern :
/// Star Pyramid

void main() {
  printPattern7(5);
}

void printPattern7(int n) {
  // This is the outer loop which will loop for the rows.
  for (int i = 0; i < n; i++) {

    /// Space Printing Loop
    /// Prints spaces before stars to center the pyramid
    /// Formula: `n - i - 1` spaces for row `i`
    /// Uses `stdout.write(' ')` to print 2 spaces without newline
    for (int j = 0; j < n - i - 1; j++) {
      stdout.write('  ');
    }

    /// Star Printing Loop
    /// Prints stars for each row
    /// Formula: `2 * i + ` spaces for row `i`
    /// Each star is preceded by a space for proper formatting
    for (int k = 0; k < 2 * i + 1; k++) {
      stdout.write(' *');
    }

    // As soon as the stars for each iteration are printed, we move to the
    // next row and give a line break otherwise all stars
    // would get printed in 1 line.
    print('');
  }
}

/// Purpose**: Prints leading spaces to center the pyramid
/// Formula Analysis: `n - i - 1`
/// Loop Execution (for n=5):

/// | Row (i) | Formula | Spaces | j iterations |
// | 0        | 5-0-1=4 | 4      | j: 0,1,2,3   |
// | 1        | 5-1-1=3 | 3      | j: 0,1,2     |
// | 2        | 5-2-1=2 | 2      | j: 0,1       |
// | 3        | 5-3-1=1 | 1      | j: 0         |
// | 4        | 5-4-1=0 | 0      | No execution |

/// Key Insight
// Spaces **decrease** as row number increases
// Creates the **triangular alignment**
// Each space is printed as `' '` (2 characters)

// ------------------------------------------------------

/// Purpose**: Prints stars for each row
/// Formula Analysis**: `2 * i + 1`
/// Loop Execution** (for n=5):

/// | Row (i) | Formula | Stars | k iterations         |
//  | 0       | 2×0+1=1 | 1     | k: 0                 |
//  | 1       | 2×1+1=3 | 3     | k: 0,1,2             |
//  | 2       | 2×2+1=5 | 5     | k: 0,1,2,3,4         |
//  | 3       | 2×3+1=7 | 7     | k: 0,1,2,3,4,5,6     |
//  | 4       | 2×4+1=9 | 9     | k: 0,1,2,3,4,5,6,7,8 |

/// Key Insight:
// Stars **increase** by 2 in each row
// Always results in **odd numbers** (1,3,5,7,9...)
// Each star is printed as `' *'` (space + asterisk)
