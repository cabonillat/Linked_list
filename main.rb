require_relative 'lib/linked_list'

list = LinkedList.new(10)

list.push(14)

list.push(5)

puts list.sum

puts list.to_s

puts list.reverse


