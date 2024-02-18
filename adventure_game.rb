total_points = 0
puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

rooms = [
  { name: "Room 1", points: 5 },
  { name: "Room 2", points: 10 },
  { name: "Room 3", points: 15 }
]

loop do
  puts "\nChoose a room (1-3) to enter or 'exit' to end the game:"
  input = gets.chomp
  case input
  when '1', '2', '3'
    total_points += rooms[input.to_i - 1][:points]
    puts "You entered #{rooms[input.to_i-1][:name]} and earned #{rooms[input.to_i-1][:points]} points."
    puts "Total points: #{total_points}"
  when 'exit'
    puts "Game over! You collected a total of #{total_points} points."
    break
  else
    puts "Invalid, enter a valid room number..."
  end
end
