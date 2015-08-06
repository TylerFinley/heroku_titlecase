class String
  define_method(:title_case) do
    exceptions =["the","a","an","is","and", "in","on","from", "to"]

    self.downcase!()
    split_sentence = self.split()
    split_sentence.each do |word|
      if !exceptions.include?(word)
        word.capitalize!()
      end
      if word.==(split_sentence.at(0))
        word.capitalize!()
      end
      if word.include?("Mc").|word.include?("O'")
        word.sub!(word[2], word[2].capitalize!())
      end


    end
    split_sentence.join(" ")
  end

end
