#!/usr/bin/env ruby
#
# Assignment block tidier, version 0.1.
#
# Copyright Chris Poirier 2006.
# Licensed under the Academic Free License version 3.0.
#
# This script can be used as a command for TextMate to align all
# of the equal signs within a block of text.  When using it with
# TextMate, set the command input to "Selected Text" or "Document",
# and the output to "Replace Selected Text".  Map it to a key
# equivalent, and any time you want to tidy up a block, either
# select it, or put your cursor somewhere within it; then hit the
# key equivalent.  Voila.
#
# Note that this is the first version of the script, and it hasn't
# been heavily tested.  You might encounter a bug or two.
#
# Per the license, use of this script is ENTIRELY at your own risk.
# See the license for full details (they override anything I've
# said here).

lines = STDIN.readlines()
relevant_line_pattern = /^[^=]+[^-+&lt;&gt;=!%\/|&amp;*^]=(?!=|~)/
column_search_pattern = /[\t ]*=/


block_top    = 1
block_bottom = lines.length

#
# Now, iterate over the block and find the best column number
# for the = sign.  The pattern will tell us the position of the
# first bit of whitespace before the equal sign.  We put the
# equals sign to the right of the furthest-right one.  Note that
# we cannot assume every line in the block is relevant.

best_column = 0
block_top.upto(block_bottom) do |number|
   line = lines[number - 1]
   if line =~ relevant_line_pattern then
      m = column_search_pattern.match(line)
      best_column = m.begin(0) if m.begin(0) > best_column
   end
end


#
# Reformat the block.  Again, we cannot assume all lines in the
# block are relevant.

block_top.upto(block_bottom) do |number|
   if lines[number-1] =~ relevant_line_pattern then
      before, after = lines[number-1].split(/[\t ]*=[\t ]*/, 2)
      lines[number-1] = [before.ljust(best_column), after].join(after[0,1] == '&gt;' ? " =" : " = ")
   end
end


#
# Output the replacement text

lines.each do |line|
   puts line
end
