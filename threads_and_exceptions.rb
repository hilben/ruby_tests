
def spawn
  Thread.abort_on_exception = true
  Thread.new do
    while 1 do
      rnd = rand
      rnd  = Integer(rnd * 10)
      puts rnd
      raise ArgumentError if rnd > 8
      sleep 1
    end
  end
end
spawn
while 1 do
  begin
    begin
      sleep 3
      puts 'a'
    rescue ArgumentError
      puts 'a failed'
      spawn
    end


    begin
      sleep 3
      puts 'b'
    rescue ArgumentError
      puts 'b failed'
      spawn
    end
    puts 'c'
  rescue ArgumentError
    puts 'c failed'
    spawn
  end
end
