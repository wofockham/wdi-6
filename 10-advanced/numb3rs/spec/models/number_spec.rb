require 'rails_helper'

describe Number do
  describe '.bin2dec' do
    it 'converts binary binary to decimal' do
      expect(Number.bin2dec('0000')).to eq 0
      expect(Number.bin2dec('1101')).to eq 13
      expect(Number.bin2dec('1111')).to eq 15
    end

    it 'returns 0 for invalid binary strings' do
      expect(Number.bin2dec('7 hotdogs')).to eq 0
    end
  end

  describe '.dec2bin' do
    it 'converts decimal to binary' do
      expect(Number.dec2bin(13)).to eq '1101'
    end
  end

  describe '.bin2hex' do
    it 'converts binary to hexadecimal' do
      expect(Number.bin2hex('1110111110011')).to eq '1df3'
    end
  end

  describe '.hex2bin' do
    it 'converts hexadecimal to binary' do
      expect(Number.hex2bin('1df3')).to eq '1110111110011'
    end
  end
end
