# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end
  
def batch_badge_creator(names)
  # create empty array to push new messages
  badge_messages = []
  # we iterate our names array 
  names.each do |name| 
    message = badge_maker(name)
    badge_messages << message
  end
  # we return the new array
  badge_messages
end

def assign_rooms(speakers)
  # we create empty array that return the message
  room_message=[]
  # loop thru our speakers array
  speakers.each_with_index do |name, index|  
    # push the message to our empty array
    room_message << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  # we return room_message
  # print room_message
  room_message
end

def printer(speakers)
  # we loop thru our messages from our batch_badge_creator method
  batch_badge_creator(speakers).each do |message|
  # and we print a message for each speaker
    puts message
  end
  # room_message = assign_rooms(speakers) >> if we wanted to store our method in a new variable first
    room_message = assign_rooms(speakers)
    room_message.each do |message|
    puts message
  end
end

assign_rooms(['Dia', 'Lili', 'Soni'])