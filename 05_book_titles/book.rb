class Book
  attr_reader :title
  def title=(t)
    forb = ['the', 'a', 'an', 'and', 'in', 'of']
    @title = t.capitalize.split.map{|x| (forb.include? x)? x : x.capitalize}.join(' ')    
  end
end
