

class BeefyRobotSimulator

  def initialize
    set_up_table
    game_loop
  end

  def set_up_table
    @table = []
    0.upto(5) do |x|
      array = []
      0.upto(5) do |y|
        array.push([x, y])
      end
      @table.push(array)
    end
  end

  def game_loop
    invalid = true
    begin 
      puts "Where would you like to place Beefy? (x,y)"
      placement = gets.chomp
      input = placement.split(',')
      if (input[0].to_i >= 0 && input[0].to_i <= 4)
        if (input[1].to_i >= 0 && input[1].to_i <= 4)
          invalid = false
        end
      end
    end while invalid

    @robot = Robot.new(input[0], input[1])

    puts "Enter commands of the following form: PLACE X,Y,F MOVE LEFT RIGHT REPORT"

    while true
      command = gets.chomp
      input = command.split(' ')
      input.each do |c|
        @robot.c
      end
    end

  end


end






