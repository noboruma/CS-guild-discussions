#!/usr/bin/ruby
$LOAD_PATH << '.'
require './List.rb'

$l = MyList.new(0);

def append1And2
  yield 1
  yield 2
end
append1And2{ |i| $l.append(i) }

$l = $l.removeRet(0);
$l.removeRet(1, $l);

$l.print()
