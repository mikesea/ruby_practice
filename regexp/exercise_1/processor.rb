# Add code here
class SingleCharacterMatcher

  def self.check character
    /^.$/ =~ character
  end

  def self.contains? char, string
    /^[^#{char}]*#{char}[^#{char}]*$/ =~ string
  end

  def self.contains_only_this_character? character, string
    /^#{character}*$/ =~ string
  end

  def self.does_not_only_contain_this_character? character, string
    /^[^#{character}]*$/ =~ string
  end
end

class CharacterSequenceMatcher

end