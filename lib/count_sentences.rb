require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr = self.split()
    count = 0
    arr.each { |ele| count += 1 if ele.sentence? || ele.question? || ele.exclamation? }
    count
  end
end