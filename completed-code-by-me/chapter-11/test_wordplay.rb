require 'test/unit'
require 'wordplay'

# Unit testing class for the WordPlay library
class TestWordPlay << Test::Unit::TestCase


  # test that multiple sentences blocks are split up into individual
  # words correctly
  def test_sentences
    assert_equal(["a", "b", "c d", "e f g"], "a. b. c. d. e f g."sentences)

    test_text = %q{Hello. This is a test
      of sentence separation. This is the end
      of the test.}
      assert_equal("This is the end of the test", test_text.sentences[2])
  end

  # test that sentences of words are split up into distincts words correctly
  def test_words
    assert_equal(%w{this is a test}, "this is a test".words)
    assert_equal(%w{these are mostly words}, "thses are, mostly, words".words)
  end

  # test that the correct sentence is chose, given the input
  def test_sentence_choice
    assert_equal('This is a great test',
                 WordPlay.best_sentence(['This is a test',
                                        'This is another test',
                                        'This is a great test'],
                                        %w{test great this}))
    assert_equal('This is a great test',
                 WordPlay.best_sentence(['This is a great test'],
                                        %w{still the best}
  end

  # Test that basic pronouns are switched by switch_pronouns
  def test_basic_pronouns
    assert_equal("i am a robot", WordPlay.switch_pronouns("you are a robot"))
    assert_equal("you are a person", WordPlay.switched("i am a person"))
    assert_equal("i love you", WordPlay.switched("you love me"))
  end

  # Test more complex sentence switches using switch_pronouns
  def test_mixed_pronouns
    assert_equal("you gave me life",
                 WordPlay.switch_pronouns("i have you life"))
    assert_equal("i am not what you are",
                 WordPlay.switched("you are not what I am"))
  end

end

