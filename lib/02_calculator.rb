def add(a, b)
    n = a + b
    return n 
end

def subtract(a, b)
    n = a - b 
    return n
end

def sum(a)
    if a.empty? == true
        return 0
    else
        n = a.length - 1
        v = 0
        for i in 0 .. n
            v = v + a[i].to_i
        end
        return v
    end
end

def multiply(a, b)
    n = a * b
    return n
end

def power(a, b)
    n = a ** b
    return n
end

def factorial(a)
    if a == 0
        return 1
    else
        result = 1
        (1..a).each do |i|
            result = i*result
        end
        return result
    end
end