class MainMenu

  attr_accessor :user_selection, :orca_facts, :orca_adventure, :orca_quiz
   
  def initialize
    @user_selection = display_menu
    handle_selection
  end

  def display_menu
    intro_msg = "Welcome to the Southern Residents Explorer! An educational app for folks interested in learning more about the beloved Southern Residents Killer Whales.\nPlease select one of the following menu options:\n1) Pod Profiles: Meet the Southern Residents\n2) Pod Adventures: Dive into Orca Life\n3) Orca Quiz: Test Your Tail Flukes\n4) Swim Away: Exit the Explorer"

    loop do
      puts intro_msg
      user_selection = gets.chomp.to_i

      case user_selection
      when 1, 2, 3, 4
        return user_selection
      else
        puts "Invalid selection: #{user_selection}. Please try again!\n"
      end
    end
  end

  def handle_selection
    case @user_selection
    when 1
      @orca_facts = Facts.new
      orca_facts.launch_facts
    when 2
      @orca_adventure = Adventure.new
      orca_adventure.launch_adventure
    when 3
      @orca_quiz = Quiz.new
      orca_quiz.launch_quiz
    when 4
      puts "We hope you learned something new about the Southern Residents today!"
    else
      raise "Invalid selection: #{@user_selection}. Please select a valid menu option."
    end
  end

end
