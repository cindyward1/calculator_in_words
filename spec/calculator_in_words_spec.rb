require("rspec")
require("calculator_in_words")

describe("calculator_in_words") do

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 5 plus 3?").should(eq([8]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 5 minus 3?").should(eq([2]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 6 divided by 3?").should(eq([2.0]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 5 divided by 2?").should(eq([2.5]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 5 times 2?").should(eq([10]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 4 to the 3rd power?").should(eq([64]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 4 plus 6 divided by 2?").should(eq([5]))
  end

  it("takes math problems in English and solves them") do
    calculator_in_words("What is 2 plus 3? What is 7 divided by 4?").should(eq([5,1.75]))
  end
  
end
