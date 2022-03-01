require './app/hello_world'

RSpec.describe 'hello_world' do
  it 'returns "Hello, world!"' do
    result = hello_world

    expect(result).to eq 'Hello, world!'
  end
end
