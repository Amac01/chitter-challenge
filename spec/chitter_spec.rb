require 'peeps'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peep.all

      expect(peeps).to include("Hello all")
      end
  end
end
