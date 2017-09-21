# 389
def find_the_difference(s, t)
  s_cache = {}
  t_cache = {}

  s.each_char do |char|
    s_cache[char] ? s_cache[char] += 1 : s_cache[char] = 1
  end

  t.each_char do |char|
    t_cache[char] ? t_cache[char] += 1 : t_cache[char] = 1
  end

  t_cache.keys.each do |char|
    return char if t_cache[char] != s_cache[char]
  end
end
