require_relative "./PolyTreeNode.rb"

class KnightPathFinder

    attr_reader :root_node, :considered_positions

    def self.valid_moves(pos)
        valid_moves = []
        row, col = pos
        valid_changes = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]

        valid_changes.each do |change|
            new_row = row + change[0]
            new_col = col + change[1]
            if [new_row, new_col].all? { |el| el >= 0 && el <= 7 }
                valid_moves << [new_row, new_col]
            end
        end
        valid_moves
    end
    
    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [@root_node]
        self.build_move_tree
    end

    def new_move_positions(pos)
        moves = KnightPathFinder.valid_moves(pos)
        new_moves = []
        moves.each do |move|
            new_moves << move if !considered_positions.include?(move)
        end
        new_moves.each { |move| @considered_positions << move }
        new_moves
    end

    # def [](pos)
    #     row, col = pos
    # end

    def build_move_tree(end_pos)
        queue = [self.root_node]
        until queue.empty?
            curr_node = queue.shift
            if curr_node.value == end_pos
                return curr_node
            end
        end
    end
end

# kpf = KnightPathFinder.new([0,0])
# # p kpf
# # p kpf.root_node.children
# # p kpf.considered_positions

# p kpf.considered_positions
# p kpf.new_move_positions([0,0])
# p kpf.considered_positions


