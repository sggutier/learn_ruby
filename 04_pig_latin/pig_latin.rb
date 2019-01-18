def isVowel(str)
  (/[aeiouy]/ =~ str.downcase)? true : false
end

def consonantPhonemLength(str)
  str = str.downcase
  if str[0, 2] == 'qu'
    return 2;
  end
  return isVowel(str[0])? 0 : 1;
end

def translateWord(str)
  ends = []
  if !isVowel(str[0])
    x = 0
    while (x = consonantPhonemLength(str)) != 0
      ends.push(str[0, x]);
      str = str[x..];
    end
  end
  return str + ends.join('') + 'ay';
end

def translate(str)
  arr = str.split(' ')
  arr.map{ |x| translateWord(x) }.join(' ')
end
