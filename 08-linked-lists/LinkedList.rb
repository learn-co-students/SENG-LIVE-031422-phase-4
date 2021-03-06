# Make 'pry' available in order to use 'binding.pry'
require 'pry'

# - Write out/explain steps for the solution before coding 
# - Code out solution 
# - Run test case examples 
# - Give Big-O

# Implement a custom LinkedList Class with:

    # 1. A method (add_to_start) that adds a new Node to the beginning of each LinkedList.
        # Big-O Time Complexity: O(1)
    # 3. A method (add_to_end) that adds a new Node to the end of each LinkedList.
        # Big-O Time Complexity: O(n)
    # 2. A method (print_all) that prints the value of every Node.
        # Big-O Time Complexity: O(n)

class Node
    # Set attr_accessor for :value, :next_node
    # Define 'initialize' to accept 'value' and 'next_node' (default nil)
end

class LinkedList
    # Set attr_accessor for :head
    # Define 'initialize' to set @head = nil

    # Define 'add_to_start' to add a new Node to the beginning of each LinkedList.
        # Create a new 'Node' using passed 'value' argument
        # Set 'new_node.next_node' equal to '@head'
        # Set '@head' equal to 'new_node' and return

    # Define 'add_to_end' to add a new Node to the end of each LinkedList.
        # Create a new 'Node' using passed 'value' argument
        # Assign 'current' to equal 'self.head'
        # While 'current.next_node' is not falsey, set 'current' equal to 'current.next_node'
        # Otherwise, set 'current.next_node' equal to 'new_node'

    # Define 'print' to output the value of every Node
        # Assign 'current' to equal 'self.head'
        # While 'current' is not falsey, output current.value before setting 'current' equal to 'current.next_node'
end