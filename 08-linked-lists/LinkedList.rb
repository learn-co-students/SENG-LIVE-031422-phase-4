# Make 'pry' available in order to use 'binding.pry'
require 'pry'

# - Write out/explain steps for the solution before coding 
# - Code out solution 
# - Run test case examples 
# - Give Big-O

# Implement a custom LinkedList Class with:

    # 1. A method (add_to_start) that adds a new Node to the beginning of each LinkedList.
        # Big-O Time Complexity: O(1)
    # 2. A method (add_to_end) that adds a new Node to the end of each LinkedList.
        # Big-O Time Complexity: O(n)
        # [1,2,3,4,5] = 
    # 3. A method (print_all) that prints the value of every Node.
        # Big-O Time Complexity: O(n)

class Node
    # Set attr_accessor for :value, :next_node
    attr_accessor :value, :next_node

    # Define 'initialize' to accept 'value' and 'next_node' (default nil)
    def initialize(value, next_node=nil)
        @value = value
        
        # @next_node = nil
        @next_node = next_node
    end
end

class LinkedList
    # Set attr_accessor for :head
    attr_accessor :head

    # Define 'initialize' to set @head = nil
    def initialize
        @head = nil
    end

    # Big-O Time Complexity: O(1)
    # Define 'add_to_start' to add a new Node to the beginning of each LinkedList.
    def add_to_start(value)
        # Create a new 'Node' using passed 'value' argument
        new_node = Node.new(value)

        # Set 'new_node.next_node' equal to '@head'
        new_node.next_node = @head
        
        # Set '@head' equal to 'new_node' and return
        @head = new_node
    end

    # Big-O Time Complexity: O(n)
    # Define 'add_to_end' to add a new Node to the end of each LinkedList.
    def add_to_end(value)
        # Creat# Create a new 'Node' using passed 'value' argument
        new_node = Node.new(value)

        # Assign 'current' to equal 'self.head'
        current = @head

        # If 'current' isn't nil, proceed through Linked List as usual to add new_node to end
        if current

            # While 'current.next_node' is not falsey, set 'current' equal to 'current.next_node'
            while current.next_node
                current = current.next_node
            end

            current.next_node = new_node
        
        # If 'current' is nil, set @head = new_node and return
        else
            @head = new_node
        end
    end

    # Big-O Time Complexity: O(n)
    # Define 'print_all' to output the value of every Node
    def print_all
        # binding.pry
        
        # Assign 'current' to equal 'self.head'
        
        # If LinkedList has no Nodes, self.head = nil
        current = self.head

        # While 'current' is not falsey, output current.value 
        
        # If no Nodes inside LinkedList, current = nil => FALSEY
        # If Nodes, current = each subsequent Node
        while current
            puts "Value is: #{current.value}"

            # before setting 'current' equal to 'current.next_node'
            current = current.next_node 
        end
    end
end

# Instantiate LL Class
linked_list = LinkedList.new()

# Add New Nodes to Beginning of LL
# linked_list.add_to_start(1)
# linked_list.add_to_start(2)
# linked_list.add_to_start(3)
# linked_list.add_to_start(4)

# Add New Nodes to End of LL
linked_list.add_to_end(1)
linked_list.add_to_end(2)
linked_list.add_to_end(3)
linked_list.add_to_end(4)

# Print All Nodes in LL
linked_list.print_all