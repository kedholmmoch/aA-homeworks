class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence

    require_sequence

    unless game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color

    puts "Here is the current sequence."
    puts seq

    sleep(2)
    system "clear"
  end

  def require_sequence
    puts "Enter back the sequence, separating each color by a space: "
    entered = gets.chomp.split(" ")

    unless entered == seq
      @game_over = true
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You got it! Let's add another color."
  end

  def game_over_message
    puts "You lose! Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
