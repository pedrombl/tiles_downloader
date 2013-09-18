module SequenceUtils

  def sequence_between(a,b)
    if(a > b)
      return (b..a).to_a
    end
    (a..b).to_a
  end

  
end
