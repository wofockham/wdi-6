class SinglyLinkedList
  include Enumerable

  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) if value
  end

  def each
    next_node = @head
    while next_node
      yield next_node.value if block_given?
      next_node = next_node.next
    end
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
    predecessor = find(value)
    if predecessor
      new_node = Node.new new_value
      new_node.next = predecessor.next
      predecessor.next = new_node
    else
      nil
    end
  end

  def prepend(value)
    new_node = Node.new value
    new_node.next = @head if @head
    @head = new_node
  end

  def remove # pop(): remove from the end and return the value
    prev = nil
    current = @head

    while current && current.next
      prev = current
      current = current.next
    end

    if prev
      prev.next = nil
    else
      @head = nil
    end

    current
  end

  def find(value) # returns the node with value=value or nil if not found
    next_node = @head
    while next_node && next_node.value != value
      next_node = next_node.next
    end
    next_node
  end

  def reverse # returns a new SLL with nodes in the reverse order
    reversed = SinglyLinkedList.new
    current_node = @head
    while current_node
      reversed.prepend current_node.value
      current_node = current_node.next
    end
    reversed
  end

  def reverse!
    @head = reverse.head # Cheers Nick.
  end

  def get(index) # Finds the indexth node.
  end

  def [](index)
  end

  def []=(index) # Tricky.
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
