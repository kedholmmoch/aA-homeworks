class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    self.cups[0..5].each do |cup| 
      4.times { cup << :stone}
    end
    self.cups[7..12].each do |cup|
      4.times { cup << :stone}
    end
  end

  def valid_move?(start_pos)
    if start_pos > 13
      raise "Invalid starting cup"
    end
    if cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    stones = self.cups[start_pos].count
    self.cups[start_pos] = []  
    pos = start_pos + 1
    while stones > 0
      unless (pos == 6 && start_pos > 6) || (pos == 13 && start_pos < 6)
        self.cups[pos] << :stone
        stones -= 1
        last_cup = pos
      end
      break if stones == 0
      pos = (pos + 1) % 14
    end


    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
