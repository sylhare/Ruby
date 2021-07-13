# Hola

A simple gem example from [How to make your own gem](https://guides.rubygems.org/make-your-own-gem/)

```shell
% irb -Ilib -rhola
irb(main):001:0> Hola.hi("english")
=> "hello world"
irb(main):002:0> Hola.hi("spanish")
=> "hola mundo"
```

Use the `bin`:

```shell
% ruby -Ilib ./bin/hola
hello world

% ruby -Ilib ./bin/hola spanish
hola mundo
```

Build the gem:

```shell
gem build hola-example
```

Run the tests:

```shell
rake test
```
