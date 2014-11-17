require 'spec_helper'
require_relative '../ip_address'

describe 'valid_ip?' do
  it 'returns true for a valid IP address' do
    expect(valid_ip?('127.0.0.1')).to eq true
    expect(valid_ip?('0.0.0.0')).to eq true
    expect(valid_ip?('255.255.255.255')).to eq true
    expect(valid_ip?('108.168.213.2')).to eq true
  end

  it 'returns false for garbage input' do
    expect(valid_ip?('hotdogs')).to eq false
    expect(valid_ip?('something.dot.com.dot.internet')).to eq false
    expect(valid_ip?('harpo.google.com.au')).to eq false
  end

  it 'returns false for quads outside the allowed range' do
    expect(valid_ip?('555.666.777.888')).to eq false
    expect(valid_ip?('-1.2.3.4')).to eq false
    expect(valid_ip?('0000.111.222.33')).to eq false
  end
end
