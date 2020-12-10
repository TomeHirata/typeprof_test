class App
  def foo(n)
    n.to_s
  end

  def boo(fn)
    fn.call
  end

  def baz(fn)
    fn.call(5)
  end

  def bar(&fn)
    fn.call(0)
  end
end

proc1 = proc { "ブロック" }
proc2 = proc { |n| n.to_s }

app = App.new

p app.foo(5)
p app.boo(proc1)
p app.baz(proc2)
p app.bar { |a| a.to_s }