require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it 'NGワードの検出' do
    expect(@filter.detect?('hello from foo')).to eq true
  end
  it 'NGワード抜きだとメッセージを検出しない' do
    expect(@filter.detect?('hello, world!')).to eq false
  end
end
