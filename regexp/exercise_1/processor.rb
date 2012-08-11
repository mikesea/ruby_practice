# Add code here
class SingleCharacterMatcher
  
  def self.check char
    /^.$/ =~ char
  end

  def self.contains? char, string
    /^[^#{char}]*#{char}[^#{char}]*$/ =~ string
     # /(^#{char}[^#{char}]+$|^[^#{char}]#{char}{1}[^#{char}]$|^[^#{char}]#{char}{0}#{char}$)/ =~ string
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

class VowlerPairMatcher
  def self.check chars
    /([aeiou][\\n]*[aeiou])/i =~ chars
  end
end

class RepetitionMatcher
  def self.check chars
    /(\S)(\1+)/i =~ chars
  end

  def self.last string
    string.gsub!(/(?:\\n)|[\W]/, "")
    matches = string.scan(/(\w)(\1+)/i)
    matches.last.join
  end
end