# Add code here
class SingleCharacterMatcher
  
  def self.check char
    /^.$/ =~ char
  end

  def self.contains? char, string
    /^[^#{char}]*#{char}[^#{char}]*$/ =~ string
  end

  def self.contains_only_this_character? char, string
    /^#{char}*$/ =~ string
  end

  def self.does_not_only_contain_this_character? char, string
    /^[^#{char}]*$/ =~ string
  end
end

class CharacterSequenceMatcher

  def self.check chars
    /(\S)(\1+)/ =~ chars
  end

end