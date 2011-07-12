class Hello
  def initialize
    @output_console = $stdout
    @input_console = $stdin
<<<<<<< HEAD
    @name = {}
    @name_keys = []
    @full_name = ""
  end
  
  attr_reader :name
  attr_accessor :input_console, :output_console
  
  def prompt(var)
    @output_console.puts "What's your #{var}?"
  end
  
  def prompt_read(var)
    @name[var] = @input_console.gets.chomp
    @name_keys << var
  end
  
  def build_name
    @name_keys.each do |key|
    @full_name << @name[key] + " " 
    end
    @full_name.chop!
  end
  
  def hello
    if @full_name == "Brian P O'Rourke"
      @output_console.puts "Sup Teach!"
    else 
      @output_console.puts "Hi, #{@full_name}!"
    end
  end
end
=======
  end

  attr_reader :name
  attr_accessor :input_console, :output_console

  # DRY = "don't repeat yourself"

  def prompt
    @output_console.puts "What's your name?"
  end

  def prompt_read
    @name = @input_console.gets.chomp
  end

  def hello
    @output_console.puts "Hi, #{@name}!"
  end
end
>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
