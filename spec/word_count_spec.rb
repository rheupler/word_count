require('rspec')
require('word_count')

describe('String#word_count') do
  it('Counts the number of times a word appears in string') do
    expect(("I am so sad").word_count("sad")).to(eq(1))
  end
end
