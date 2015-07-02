# DAT
DAT makes everything DAT
(not a obfuscator)

INPUT
----
```rb
class Foo
  def bar
    puts "hello world"
  end
end

class Bar
  def self.jin a,b
    return a+b
  end
  def self.woo
    return self.jin 4, 1
  end
end

Foo.new.bar
Bar.woo
```

OUTPUT
----
```rb
class Dat
  def dat
    dat "hello world"
  end
end

class Dat
  def self.dat dat,dat
    return dat+dat
  end
  def self.dat
    return self.dat 4, 1
  end
end

Dat.dat.dat
Dat.dat
```
