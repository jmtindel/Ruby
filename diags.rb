#!/usr/bin/env ruby

#
# Prints out the right-slanted diagonals of a matrix,
# starting with the right/topmost element.
#
def print_diags(matrix)
  # These are array indices.
  last_row = matrix.length - 1
  last_col = matrix[0].length - 1

  # Go along top row, angling down to left.
  (0...last_col+1).each do |start_col|
    diag_len = [last_row, start_col].min + 1
    diag_len.times do |i|
      print "#{matrix[i][start_col - i]} "
      $stdout.flush
    end
    puts
  end

  # Go along rightmost column, angling down to left.
  (1...last_row+1).each do |start_row|
    diag_len = [last_row - start_row, last_col].min + 1
    diag_len.times do |i|
      print "#{matrix[start_row + i][last_col - i]} "
      $stdout.flush
    end
    puts
  end
end


_A = <<-DOC

a = [[1,  2,  3,  4],
     [5,  6,  7,  8],
     [9, 10, 11, 12]]
DOC
a = [[1,  2,  3,  4],
     [5,  6,  7,  8],
     [9, 10, 11, 12]]

_B = <<-DOC

b = [[ 1,  2,  3],
     [ 4,  5,  6],
     [ 7,  8,  9],
     [10, 11, 12]]
DOC
b = [[ 1,  2,  3],
     [ 4,  5,  6],
     [ 7,  8,  9],
     [10, 11, 12]]

puts _A
print_diags(a)

puts _B
print_diags(b)
