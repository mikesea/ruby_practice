$:.unshift File.dirname(__FILE__)

module NumberUtilities

  PEMDAS = ["*", "/", "+", "-"]

  def self.process_array(array)
    array.each_index do |c|
      if PEMDAS.include?(array[c])
        math = array[c-1] + " " + array[c] + " " + array[c+1]
        array[c-1] = eval(math).to_s
        array.slice!(c..c+1)
        process_array(array)
      end
    end
    array[0].to_i
  end
  
end