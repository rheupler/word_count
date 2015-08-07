require('rspec')
require('word_count')

describe('String#word_count') do
  it('Returns how many words in string') do
    expect(("I am blue").word_count()).to(eq(3))
  end
end
