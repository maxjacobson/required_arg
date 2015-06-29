require 'spec_helper'

describe RequiredArg do
  it 'has a version number' do
    expect(RequiredArg::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
