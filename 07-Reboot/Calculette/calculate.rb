def calculate(x, y, s)
  if s == "+"
    r = x + y
  elsif s == "-"
    r = x - y
  elsif s == "*"
    r = x * y
  else
    r = ""
  end
  return r
end

