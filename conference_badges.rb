
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

# Puts results of batch_badge_creator and assign_rooms method to the screen
def printer(attendees)
  puts batch_badge_creator(attendees)
  
  
  To make this test pass, make sure you are iterating through your badges and room assignments lists.
  
end