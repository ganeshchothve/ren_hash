

INPUT = {a: 1, b: 2, c: 3, d: 2}
OUTPUT = {1 => :a, 2 => [:b, :d], 3 => :c}

input_hash = {a: 1, b: 2, c: 3, d: 2, e: 2}

res = {}

input_hash.each do |k, v|
  if res.keys.include?(v)
    if res[v].is_a?(Array)
      res[v] << k
    else
      res[v] = [res[v], k]
    end
  else
    res[v] = k
  end
end

