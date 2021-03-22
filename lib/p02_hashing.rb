class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    # arraya = [1,2,3] => 8892348901238907
    # arrayb = [1,2,3] => 8892348901238907
    # [3,2,1] != 8892348901238907
    
    sum = 0

    self.each_with_index do |ele, i|
      sum += ele * i
    end

    return sum.hash 
  end
end

class String
  def hash
    int = self.split("").map { |char| char.ord }
    int.hash 
  end
  
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    array = []
    self.each do |k,v| 
      if k.is_a(String)
    end 
  end
end
