require 'hello'

class TestHello < Test::Unit::TestCase
  def test_truth
    assert_equal true, true
  end

  def test_creation
    app = Hello.new
  end
<<<<<<< HEAD
  
  def test_get_nil_name
    app = Hello.new
    assert_equal app.name, nil
  end  
  
  
=======

  def test_get_nil_name
    app = Hello.new
    assert_equal app.name, nil
  end

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
  class FakeOutputConsole
    def read
      @data
    end
<<<<<<< HEAD
   
=======

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
    def puts(data)
      @data = data
    end
  end
<<<<<<< HEAD
  
=======

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
  class FakeInputConsole
    def set(name)
      @name = name
    end
    
    def gets
      @name
    end
  end
<<<<<<< HEAD
      
=======

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
  def test_prompt
    app = Hello.new
    output_console = FakeOutputConsole.new
    app.output_console = output_console
    app.prompt
<<<<<<< HEAD
    assert_equal "What's your name?", output_console.read
  end
  
=======
    assert_equal "What's your name?", output_console.read 
  end

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
  def test_default_console
    app = Hello.new
    assert_equal $stdout, app.output_console
    assert_equal $stdin, app.input_console
  end
<<<<<<< HEAD
  
=======

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
  def test_read_prompt
    app = Hello.new
    input_console = FakeInputConsole.new
    input_console.set "George\n"
    app.input_console = input_console
    app.prompt_read
    assert_equal "George", app.name
<<<<<<< HEAD
    
    output_console = FakeOutputConsole.new
    app.output_console = output_console
    app.hello
    
=======

    output_console = FakeOutputConsole.new
    app.output_console = output_console
    app.hello

>>>>>>> 9db31b2fe07bb3a1942625a9da9997f6e58827c4
    assert_equal "Hi, George!", output_console.read
  end
end
