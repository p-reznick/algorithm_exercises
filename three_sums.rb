def three_sum(nums)
    matches = []
    nums.permutation(3) do |p|
        p.sort!
        matches << p if p.reduce(&:+) == 0 &&
                   matches.index(p) == nil
    end
    matches
end
