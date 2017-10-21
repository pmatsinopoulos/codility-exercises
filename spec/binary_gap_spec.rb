require_relative '../binary_gap'

describe 'BinaryGap' do
  [
      [9, 2],
      [529, 4],
      [20, 1],
      [15, 0],
      [1041, 5],
      [0, 0],
      [nil, 0],
      [2_147_483_647, 0],
      [2_147_483_646, 0],
      [2_147_483_645, 1],
      [4_194_464, 14]
  ].each do |input, output|
    it "when input is #{input} and output is #{output}" do
      expect(binary_gap(input)).to eq(output)
    end
  end
end
