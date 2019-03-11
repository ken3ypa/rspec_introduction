class MessageFilter
  def initialize(word)
    @word = word
  end

  def detect?(text)
    # true #仮実装。テストのテスト
    # falseが返ってきたらすぐ崩壊する
    text.include?(@word)
  end
end
