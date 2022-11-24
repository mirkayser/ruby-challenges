require 'pry'


class A
  def hello() puts "hello world!" end

  def add(x, y)
    x + y
  end

  def subtract(x ,y)
    x - y
  end
end


# a = A.new
# puts a.add(3,5)
# puts a.subtract(3,5)

# start a REPL session
# binding.pry

# program resumes here (after pry session)
