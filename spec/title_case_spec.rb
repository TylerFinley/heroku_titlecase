require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes the first letter of all words in a multiple word title") do
    expect(("color purple").title_case()).to(eq("Color Purple"))
  end

  it("does not capitalize certain exception words in a title") do
    expect(("fox is red").title_case()).to(eq("Fox is Red"))
  end



  it("handles non-letter characters") do
    expect(("57 beowulf alternative endings!!").title_case()).to(eq("57 Beowulf Alternative Endings!!"))
  end

  it("it manages uppercase entries") do
    expect(("BEOWULF ON THE ROCKS").title_case()).to(eq("Beowulf on the Rocks"))
  end

  it("it manages mixed case entries") do
    expect(("BeoWulf aND mE").title_case()).to(eq("Beowulf and Me"))
  end

  it("it manages unique case entries") do
    expect(("here's to beowulf and McDuff and O'Malley").title_case()).to(eq("Here's to Beowulf and McDuff and O'Malley"))
  end

end
