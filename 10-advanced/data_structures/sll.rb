class SinglyLinkedList
  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) if value
  end

  def append(value)
    new_node = Node.new(value)

    last_node = @head

    # Find the last node
    while last_node.next
      last_node = last_node.next
    end

    last_node.next = new_node
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
