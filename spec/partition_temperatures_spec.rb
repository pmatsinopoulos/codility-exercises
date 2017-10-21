require_relative '../partition_temperatures'

describe 'PartitionTemperatures' do
  [

      [[ 5, -2, 3, 8, 6], 3],
      #
      [[-5, -5, -5, -42, 6, 12], 4],
      #
      [[5, 4, 6, 3, 8, 9, 20], 4],

      [[5, -2, 3, 8, 6, 4, 10, 12], 6],

      [[1, 2, 3, 4, 5, 6, 7, 8], 1],

      [[1, 2, 3, 4, 5, 6, -1, 8], 7],

      [[8, 2, 9, 4, 5, 6, 10], 6],

      [[1, 2], 1],

      [[10, 9, 8, 7, 6, 5, 4, 3, 2, 11], 9],

  ].each do |input, output|
    it "when input is #{input} and output is #{output}" do
      expect(partition_temperatures(input)).to eq(output)
    end
  end
end
