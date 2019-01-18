def add(x, y)
    x+y
end

def subtract(x, y)
    x - y
end

def sum(a)
    a.reduce(0, :+)
end

def multiply(a)
    a.reduce(1, :*)
end

def power(x, n)
    ans = 1
    n.times { ans *= x }
    ans
end

def factorial(n)
    multiply(1..n)
end