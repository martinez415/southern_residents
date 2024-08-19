class Facts

  def launch_facts
    loop do
      profile_msg = "Pod Profiles: Meet the Southern Residents!\nSelect on the of pods to learn interesting facts about their behaviors, culture, and members.\n1) L\n2) J\n3) K"

      puts profile_msg
      pod_selection = gets.chomp.to_i
      
      if pod_selection == 1
        lpod_info
        break
      elsif pod_selection == 2
        jpod_info
        break
      elsif pod_selection == 3
        kpod_info
        break
      else
        puts "Invalid selection: #{pod_selection}. Please try again!\n"
      end
    end

    loop do
      puts "Continue learning more facts? (Y/N)"
      user_nav = gets.chomp.upcase
      if user_nav == "Y"
        launch_facts
        break
      elsif user_nav == "N"
        MainMenu.new
        break
      else
        puts "Invalid selection: #{user_nav}. Please try again!\n"
      end
    end

  end

  def lpod_info
    facts = [
      "Largest Pod: The L pod is the largest of the Southern Resident Killer Whale pods.", 
      "Number of Whales: As of 2024, there are approximately 34 individuals in the L pod.",
      "Home Range: L pod is often observed in the open ocean, traveling further south compared to J and K pods.",
      "Unique Call: L pod members have a distinct call known as L72, used for communication within the group.",
      "Notable Whale: L41, also known as Mega, was one of the oldest males in the L pod before his passing."
    ]

    facts.each do |fact|
      puts fact
      puts "Hit enter to continue..."
      gets
    end

    return facts
  end

  def jpod_info
    facts = [
      "Smallest Pod: J pod is the smallest of the three, with around 24 individuals as of 2024.",
      "Year-Round Residents: J pod is known for being the most frequently observed pod in the Salish Sea year-round.",
      "Famous Matriarch: J2, also known as Granny, was one of the oldest known orcas in the world before her presumed death in 2016, estimated to be over 100 years old.",
      "Key Members: J27, Blackberry, is one of the prominent males in the pod.",
      "Conservation Symbol: J35, Tahlequah, gained international attention in 2018 for carrying her deceased calf for 17 days in what was seen as a display of grief."
    ]

    facts.each do |fact|
      puts fact
      puts "Hit enter to continue..."
      gets
    end
    
    return facts
  end

  def kpod_info
    facts = [
      "Medium-Sized Pod: K pod has around 17 members, making it the smallest pod after J pod.",
      "Travel Patterns: K pod is known to travel extensively between the Salish Sea and the outer coast of Washington and Oregon.",
      "Notable Event: K pod experienced a significant loss with the death of K21, Cappuccino, in 2021, a prominent male in the group.",
      "Reproductive Challenges: Like the other Southern Resident pods, K pod has faced challenges with low birth rates in recent years.",
      "Environmental Impact: K pod, like the other pods, is heavily affected by the decline in Chinook salmon populations and increasing ocean noise."]

    facts.each do |fact|
      puts fact
      puts "Hit enter to continue..."
      gets
    end

    return facts     
  end

end
