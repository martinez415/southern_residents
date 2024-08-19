class Adventure

  def initialize
    @your_orca = nil
  end

  def launch_adventure
    puts "Welcome to Pod Adventures: Orca Tales\n\nHere you will participate in the Southern Residents Superpod gatherings, a display of the deep social structure and cultural richness of these endangered marine mammals. During these gatherings orcas engage in socializing and bonding activities. It's a time for the pods to reconnect, strengthen their social ties, and exchange information through vocalizations and physical interactions.\n\n"

    puts "Before we being your journey into the unique world of the southern residents, let's assign you an orca.\n\nHit enter to continue..."
    gets
    character_selection  
  end

  def character_selection
    orcas = [
      {
        :id => "K20",
        :name => "Spock",
        :pod => "K Pod",
        :gender => "Female",
        :role => "a mother, playing an essential role in the survival and social structure of K Pod, and is often observed guiding and nurturing younger members of the pod."
      },
      {
        :id => "J27",
        :name => "Blackberry",
        :pod => "J Pod",
        :gender => "Male",
        :role => "a protector and companion to younger orcas and has a prominent role in the social dynamics of the pod. His presence is significant during foraging and social interactions."
      },
      {
        :id => "L25",
        :name => "Ocean Sun",
        :pod => "L Pod",
        :gender => "Female",
        :role => "one of the oldest known living Southern Resident orcas. As the matriarch of L Pod, she plays a critical role in the social structure and leadership of the group. Her longevity and experience are vital to the pod's survival, and she has witnessed significant changes in the Southern Resident population over the decades."
      },
      {
        :id => "J56",
        :name => "Tofino",
        :pod => "J Pod",
        :gender => "Female",
        :role => "a young female, representing the future of the J Pod. Her playful interactions and curiosity have been noted, as young orcas often spend time learning from older members and practicing skills they will need as adults."
      },
      {
        :id => "L41",
        :name => "Mega",
        :pod => "L Pod",
        :gender => "Male",
        :role => "one of the most prominent and easily recognizable males in the Southern Resident population. With his massive size and towering dorsal fin, Mega plays a crucial role in the social dynamics of L Pod. As one of the oldest and most experienced males, he is often seen accompanying and protecting younger members of the pod."
      }           
    ]

    @your_orca = orcas.sample
    puts "Your orca is #{@your_orca[:id]} #{@your_orca[:name]}!\n\nFrom the #{@your_orca[:pod]}, this killer whale is #{@your_orca[:role]}\n\nHit enter to begin your adventure..."
    gets
    game_play
  end

  def play_scenario
    scenario = {
      :introduction => "Your orca, known for its playful nature, is feeling energetic. Today, it's all about fun and games in the ocean.",
      :options => {
        :A => {
          :prompt => "Your orca spots a group of young orcas playing with kelp. Do you join in and grab some kelp, or do you leap out of the water in a spectacular breach?",
          :choice_1 => "Join the kelp game.",
          :result_1 => "The other orcas cheer as you join the game. You become the center of attention, weaving through the water with kelp in tow.",
          :choice_2 => "Breach out of the water.",
          :result_2 => "Your breach catches the attention of a nearby pod, and they swim over to join the fun. The ocean is alive with playful energy.",
        },
        :B => {
          :prompt => "After a while, you notice a young orca struggling to keep up. Do you slow down to help, or do you encourage them to try harder?",
          :choice_1 => "Slow down and help.",
          :result_1 => "The young orca is grateful, and together, you find a new game to play that everyone can enjoy.",
          :choice_2 => "Encourage them to keep up.",
          :result_2 => "The young orca pushes itself and eventually catches up, joining the group in a triumphant cheer.",
        },
        :outcome => {
          :outcome_1 => "#{@your_orca[:name]} has become a playful leader admired by the young ones!",
          :outcome_2 => "#{@your_orca[:name]} has become a respected playmate who knows how to have fun while ensuring everyone is included!"
        }
      }
    }
    return scenario
  end

  def socialization_scenario
  scenario = {
      :introduction => "Your orca is known for its strong social bonds. Today, it's time to strengthen relationships within the pod.",
      :options => {
        :A => {
          :prompt => "A member of your pod signals for a synchronized swim. Do you join in or invite others to start a new activity, like a vocalization session?",
          :choice_1 => "Join the synchronized swim.",
          :result_1 => "You swim in perfect harmony, reinforcing the unity of the pod.",
          :choice_2 => "Start a vocalization session.",
          :result_2 => "Your unique calls bring the pod closer together, creating an unbreakable bond.",
        },
        :B => {
          :prompt => "You notice another pod nearby. Do you approach them for a friendly interaction, or do you keep your distance to focus on your own pod?",
          :choice_1 => "Approach for interaction.",
          :result_1 => "The interaction strengthens inter-pod relations, and you exchange valuable social behaviors.",
          :choice_2 => "Keep your distance.",
          :result_2 => "You focus on deepening connections within your own pod, ensuring loyalty and trust.",
        },
        :outcome => {
          :outcome_1 => "#{@your_orca[:name]} has become a social leader who connects pods!",
          :outcome_2 => "#{@your_orca[:name]} has become a key figure within its own pod, known for maintaining strong internal bonds!"
        }
      }
    } 
    return scenario
  end

  def leadership_scenario
    scenario = {
      :introduction => "Your orca is a natural leader, often guiding the pod through difficult situations. Today, your leadership skills will be put to the test.",
      :options => {
        :A => {
          :prompt => "The pod faces a strong current. Do you lead them through it, relying on your strength, or do you find a safer, longer route?",
          :choice_1 => "Lead through the current.",
          :result_1 => "Your bold leadership inspires confidence, and the pod successfully navigates the challenge.",
          :choice_2 => "Find a safer route.",
          :result_2 => "The pod appreciates your caution, and they follow you to calmer waters without incident.",
        },
        :B => {
          :prompt => "A younger orca seems hesitant. Do you give them a role to boost their confidence, or do you make the decisions on your own?",
          :choice_1 => "Assign a role to the young orca.",
          :result_1 => "The young orca rises to the challenge, and the pod sees you as a leader who empowers others.",
          :choice_2 => "Make decisions alone.",
          :result_2 => "The pod relies on your wisdom and experience, and they follow without question, recognizing your authority.",
        },
        :outcome => {
          :outcome_1 => "#{@your_orca[:name]} has become a revered leader who mentors others!",
          :outcome_2 => "#{@your_orca[:name]} has become a respected solo leader who always knows the right path!"
        }
      }
    }
    return scenario
  end

  def game_play
    scenario = case @your_orca[:id]
    when "K20", "L25"
      leadership_scenario
    when "J56"
      play_scenario
    when "J27", "L41"
      socialization_scenario
    else
      puts ""
    end

    user_selection_A = 0
    user_selection_B = 0

    loop do
      puts "#{scenario[:introduction]}\n\n#{scenario[:options][:A][:prompt]} \n1) #{scenario[:options][:A][:choice_1]}\n2) #{scenario[:options][:A][:choice_2]}"
      user_selection_A = gets.chomp.to_i
      case user_selection_A
      when 1
        puts "#{scenario[:options][:A][:result_1]}"
        break
      when 2
        puts "#{scenario[:options][:A][:result_2]}"
        break
      else
        puts "Invalid selection: #{user_selection_A}. Please try again!\n"
      end
    end

    loop do
      puts "#{scenario[:options][:B][:prompt]} \n1) #{scenario[:options][:B][:choice_1]}\n2) #{scenario[:options][:B][:choice_2]}"
      user_selection_B = gets.chomp.to_i
      case user_selection_B
      when 1
        puts "#{scenario[:options][:B][:result_1]}"
        break
      when 2
        puts "#{scenario[:options][:B][:result_2]}"
        break
      else
        puts "Invalid selection: #{user_selection_B}. Please try again!\n"
      end  
    end

    if user_selection_A == 1 && user_selection_B == 1
      puts "#{scenario[:options][:outcome][:outcome_1]}"
    elsif user_selection_A == 2 && user_selection_B == 2
      puts "#{scenario[:options][:outcome][:outcome_2]}"
    else
      puts "#{scenario[:options][:outcome][:outcome_1]}. Additionally, #{scenario[:options][:outcome][:outcome_2]}"
    end

    puts "Hit enter to return to the main menu..."
    gets
    MainMenu.new
  end

end
