
# Return a badge in the form of: "Hello, my name is ____"
def badge_maker(name)
  badge = "Hello, my name is #{name}"
end

# Take an array names and return an array of badge messages 
def batch_badge_creator(names)
  names.collect { |array_value| badge_maker(array_value) }
end

# Take an array of names and return array of room assignments in the form of: "Hello, _____! You'll be assigned to room _____!"
def assign_rooms(names)
  room_array = [ ]
  names.each_with_index do |name, index|
    room = index + 1
    room_array << "Hello, #{name}! You'll be assigned to room #{room}!" 
  end  
  return room_array
end

# The method `printer` should output first the results of the batch_badge_creator method and then of the assign_rooms method to the screen - this way you can output
    # the badges and room assignments one at a time.
    # To make this test pass, make sure you are iterating through your badges and room assignments lists.
def printer 

  describe '#printer' do

    # Question 4
    # 

    it 'should puts the list of badges and room_assignments' do
      badges_and_room_assignments.each_line do |line|
        # $stdout is a Ruby global varibale that represents the current standard output.
        # In this case, the standard output is your terminal screen. This test, then,
        # is checking to see whether or not your terminal screen receives the correct
        # printed output.
        expect($stdout).to receive(:puts).with(line.chomp)
      end
      printer(attendees)
    end