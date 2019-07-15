require "set"

class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbors(node)
        self.neighbors << node
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new

    until queue.empty?
        curr_node = queue.shift
        unless visited.include?(curr_node)
            return curr_node.val if curr_node.val == target_value
            visited.add(curr_node)
            queue += curr_node.neighbors
        end
    end

    return nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]