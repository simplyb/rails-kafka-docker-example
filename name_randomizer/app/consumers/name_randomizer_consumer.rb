class NameRandomizerConsumer < Racecar::Consumer
  subscribes_to "randomize_name"

  def process(message)
    value = JSON.parse( message.value ).with_indifferent_access
    value[ :full_name ] = value[ :full_name ].split( "" ).shuffle.join
    Name.create( user_id: value[ :id ], random_name: value[ :full_name ] )
  end
end
