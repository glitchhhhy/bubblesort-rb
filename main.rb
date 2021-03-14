require "minitest/autorun"
require "./bubblesort.rb"

class TestBubblesort < MiniTest::Test
    def test_small_rand
        for _ in 0..100
            assert_equal(BubbleSort.sort((0..100).to_a.shuffle()), (0..100).to_a)
        end
    end
    def test_neg_small_rand
        for _ in 0..100
            assert_equal(BubbleSort.sort((-100..100).to_a.shuffle()), (-100..100).to_a)
        end
    end
    def test_big_rand
        for _ in 0..5
            assert_equal(BubbleSort.sort((0..5000).to_a.shuffle()), (0..5000).to_a)
        end
    end
    def test_neg_big_rand
        for _ in 0..5
            assert_equal(BubbleSort.sort((-5000..5000).to_a.shuffle()), (-5000..5000).to_a)
        end
    end
end