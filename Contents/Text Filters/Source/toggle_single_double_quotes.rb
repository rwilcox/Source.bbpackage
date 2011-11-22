#!/usr/bin/env ruby

print case str = STDIN.read
  when /\A"(.*)"\z/m; "'" + $1 + "'"
  when /\A'(.*)'\z/m; '"' + $1 + '"'
  else str
end
