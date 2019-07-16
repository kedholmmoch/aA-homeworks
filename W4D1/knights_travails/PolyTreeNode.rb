class PolyTreeNode

    attr_accessor :parent, :children, :value
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def inspect
        @value.inspect
    end

    def parent=(new_parent)
        unless @parent == nil
            old_child_idx = @parent.children.index(self)
            @parent.children.delete_at(old_child_idx)
        end

        @parent = new_parent
        unless @parent == nil
            new_parent.children << self unless new_parent.children.include?(self)
        end
    end

    def add_child(child_node)
        child_node.parent=(self)
    end

    def remove_child(child_node)
        if child_node.parent == nil
            raise "This node is not any parent's child!"
        else
            child_node.parent=(nil)
        end
    end

    def dfs(target_value)
        return self if self.value == target_value
        self.children.each do |child|
            search_result = child.dfs(target_value)
            return search_result unless search_result.nil?
        end
        nil
    end

    def bfs(target_value)
        queue = [self]
        until queue.empty?
            curr_node = queue.shift
            if curr_node.value == target_value
                return curr_node
            end
            curr_node.children.each do |child|
                queue.push(child)
            end
        end
        nil
    end
end

