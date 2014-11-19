class SinglyLinkedList
  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) if value
  end

  def last
    return nil unless @head

    last_node = @head

    while last_node.next
      last_node = last_node.next
    end

    last_node
  end

  def append(value)
    new_node = Node.new(value)

    last_node = last
    if last_node
      last_node.next = new_node
    else
      @head = new_node
    end
  end

  def insertAfter(value, new_value)
  end

  def prepend(value)
  end

  def remove # pop(): remove from the end and return the value
  end

  def find(value) # returns the node with value=value or nil if not found
  end

  def reverse # returns a new SLL with nodes in the reverse order
  end

  def reverse!
  end

  def length
    count = 0
    next_node = @head
    while next_node
      count += 1
      next_node = next_node.next
    end

    count
  end

  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil
    end

    def to_s
      @value || nil
    end
  end
end

require 'pry'
binding.pry
