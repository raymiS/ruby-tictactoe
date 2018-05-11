#     ___ 
#   |_|_|_|
#   |_|_|_|
#   |_|_|_|
#   x = horizontal = rows
#   y = vertical   = columns  

# [ [ x, x, x ], [ x, x, x ], [ x, x, x ]  ]

# <O> <1>
tictactoe = [ [nil, nil, nil], 
              [nil, nil, nil], 
              [nil, nil, nil] 
            ]

puts "Choose a letter: X/O"
player_1 = gets.chomp
            
if player_1 == "X"
    player_2 = "O"
else
    player_2 = "X"
end

index = 0

while tictactoe[index][index] == nil do
  puts "Choose a row: [0-2] "
  position_x = gets.chomp.to_i
  puts "Choose a column: [0-2] "
  position_y = gets.chomp.to_i

  if tictactoe[position_x][position_y] == nil
    play = tictactoe[position_x][position_y] = player_1
    puts tictactoe.inspect
    index += 1
  else
    puts "The space is filled"
  end
end

=begin

while index < 9 do
  puts "Choose a row: [0-2] "
  position_x = gets.chomp.to_i
  puts "Choose a column: [0-2] "
  position_y = gets.chomp.to_i

  if tictactoe[position_x][position_y] == nil
    play = tictactoe[position_x][position_y] = player_1
    puts tictactoe.inspect
  else
    puts "The space is filled"
  end

  index += 1
end


until index == 9 do
  puts "Choose a row: [0-2] "
  position_x = gets.chomp.to_i
  puts "Choose a column: [0-2] "
  position_y = gets.chomp.to_i

  if tictactoe[position_x][position_y] == nil
    play = tictactoe[position_x][position_y] = player_1
    puts tictactoe.inspect
    index += 1
  else
    puts "The space is filled"
  end
end

=end


# 1 
# right now, assignments are like this: 
# [[], [], [nil, nil, “O”]]
# can you do better? seems inconsistent between other of the inner arrays

#2 how to repeat this logic for second player

#3 how to repeat this logic for first player again

#4 how  to win

#5 input validations

#6 cheating validations
