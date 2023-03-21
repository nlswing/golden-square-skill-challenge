def say_hello(name)
  return "hello #(name)"
end

# Intended output:
#
# > say_hello("kay")
# => "hello kay"

# correction - curly brackers needed for interpolation

def say_hello(name)
  return "hello #{name}"
end