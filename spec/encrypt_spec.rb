require_relative '../encrypt'


describe "#encrypt" do
  it "should return an empty string when given an empty sentence" do
    expected = ""
    actual = encrypt("")
    expect(actual).to eq(expected) # actual == expected
  end

  it "should return the encrypted sentence" do
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(actual).to eq(expected) # actual == expected
  end
end
