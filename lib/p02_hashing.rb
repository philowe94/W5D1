class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    # arraya = [1,2,3] => 8892348901238907
    # arrayb = [1,2,3] => 8892348901238907
    # [3,2,1] != 8892348901238907
    
    array = []

    self.each do |ele|
      array << ele % array[0]
    end

    return array.sum.hash
  end
end

class String
  def hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
