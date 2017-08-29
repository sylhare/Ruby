# Ruby and Ruby on rails

Ruby on Rails is a web framework that has been written in the Ruby programming language. So here are some example.

## Getting started with Ruby

Install Ruby from the [ruby website](https://www.ruby-lang.org/en/documentation/installation/). You have multiple installer for Windows or you can use the command line for UNIX (here for Debian, Ubuntu):

	sudo apt-get install ruby-full

Once it's intalled, go on command prompt (windows) or a terminal on Linux and type:

	ruby --version

If it's properly installed, it should return the version. Now you may want to start play with Ruby, so you can launch IRB (**I**nteractive **R**u**b**y Shell).

	irb

Then you can start typing some ruby (like a python prompt). You can quit the IRB by typing `exit`.

If you have a ruby program (with a `.rb`) you can launch from the prompt, here an example with the `HelloWorld.rb` program:

	ruby HelloWorld.rb

## Getting ruby gems

RubyGems is a package management framework for Ruby. You can download it from [here](https://rubygems.org/pages/download).
Once it's installed, you can check with:

	gem --version

It can be used to download packages, for example rails:

	gem install rails

## Getting on rails

Everything is well documented [here](http://guides.rubyonrails.org/getting_started.html). But I've added some extra things that bugged me.

First on windows you can download rails [here](http://railsinstaller.org/en) which would also install SQLite3.

	rails --version

:warning: On Windows, you might have error [#72](https://github.com/railsinstaller/railsinstaller-windows/issues/72)  with rails, so you might need to overwrite the `rails.bat` file with one in here from [#72](https://github.com/railsinstaller/railsinstaller-windows/issues/72). Then you can create a new webiste (will be created in the current directory).

	rails new website

Usually this command has been launched at the end of the previous one. It is used to get all the gem required for rails. You can do so by going in the newly created repository `cd website` then:

	bundle install

:warning: On windows, the path was hard coded in `bundle.bat` you'll need to overwrite it with the one here from 
[#70](https://github.com/railsinstaller/railsinstaller-windows/issues/70).

Then in the folder, run this command, you'll be able to access the website at [http://localhost:3000/](http://localhost:3000/)
	
	rails server

:warning: If you run into a [ExecJS::ProgramError](https://github.com/Sylhare/Ruby/issues/1) try one of the solution proposed here [#1](https://github.com/Sylhare/Ruby/issues/1).

## Sources

Here are some sources and links that relates to Ruby and Ruby on Rails. 

### Ruby
- [Ruby's website](https://www.ruby-lang.org/en/news/2017/03/30/ruby-2-3-4-released/)
- [Interactive Tutorial](http://tryruby.org/levels/1/challenges/1)
- [Ruby Course](https://pine.fm/LearnToProgram/chap_00.html)

### Ruby on Rails
#### RoR - Introduction
- [Getting started](http://guides.rubyonrails.org/getting_started.html)	
- [Begin with rails](https://www.railstutorial.org/book/beginning)
- [Windows railsinstaller git](https://github.com/railsinstaller/railsinstaller-windows)

#### RoR - Authentification
- [authlogic](https://github.com/binarylogic/authlogic)
- [devise](https://github.com/plataformatec/devise)

### Vocabulary

Some definition:

- CRUD : **C**reate, **R**ead, **U**pdate and **D**estroy. Model followed by Ruby on Rails applications.