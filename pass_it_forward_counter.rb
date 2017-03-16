class PassItForwardCounter
  @@counter = 0

  def initialize(counter)
    @@counter += counter
  end

  def counter
    @@counter
  end
end

def increment(instance)
  return instance.counter if instance.counter > 1000
  increment(PassItForwardCounter.new instance.counter)
end

puts increment(PassItForwardCounter.new 1)
