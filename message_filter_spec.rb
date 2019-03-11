require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it 'NGワードの検出' do
    expect(@filter).to be_detect('hello from foo')
  end
  it 'NGワード抜きだとメッセージを検出しない' do
    expect(@filter).not_to be_detect('hello, world!')
  end
end
