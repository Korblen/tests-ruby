def echo(a)
    return a 
end

def shout(a)
    n = a.upcase
    return n 
end

def repeat(a, b = 2)
n = ""
if method(__method__).arity == 1
  b.times do
    n += a + " "
  end
else
  (b.to_i).times do
    n += a + " "
  end
end
return n.strip
end


def start_of_word(a, b)
    v = ""
    if b > a.length
        return nil
    else
        b.times do |i|
            v = v + a[i]
        end
        return v
    end
end
        
        
def first_word(a)
    a = a.split(" ")
    return a[0]
end

def titleize(str)
    words = str.split(" ")
    capitalized_words = words.map.with_index do |word, index|
      if word.length <= 3 && index != 0
        word
      else
        word.capitalize
      end
    end
    capitalized_words[0] = capitalized_words[0].capitalize
    return capitalized_words.join(" ")
  end