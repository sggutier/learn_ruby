def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n=2)
  Array.new(n, s).join(' ')
end

def start_of_word(w, n)
  w[0, n]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  forb = ['over', 'the', 'and']
  arr = str.capitalize.split(' ')
  arr.map {|x| forb.include?(x)? x : x.capitalize}.join(' ')
end
