class Quiz 

  def question_bank
    questions = [
      {
        :question => "What region is the L pod primarily associated with?",
        :choices => {
          :A => "Alaska",
          :B => "Puget Sound",
          :C => "Southern California",
        }, 
        :answer => "B"
      },
      {
        :question => "How many members are approximately in the L pod??",
        :choices => {
          :A => "20-30",
          :B => "40-50",
          :C => "60-70"
        },
        :answer => "C"
      },
      {
        :question => "Which endangered species is the primary food source for the L pod?",
        :choices => {
          :A => "Sea lions",
          :B => "Chinook salmon",
          :C => "Herring"
        },
        :answer => "B"
      },
      {
        :question => "Which member of the J pod became famous for carrying her deceased calf for 17 days in 2018?",
        :choices => {
          :A => "J35 (Tahlequah)  ",
          :B => "J2 (Granny)",
          :C => "J27 (Blackberry)",
        }, 
        :answer => "A"
      },
      {
        :question => "What type of killer whale are the J pod members classified as?",
        :choices => {
          :A => "Offshore",
          :B => "Transient",
          :C => "Resident"
        },
        :answer => "C"
      },
      {
        :question => "Where is the J pod most frequently observed?",
        :choices => {
          :A => "Gulf of Alaska ",
          :B => "Salish Sea",
          :C => "Bering Sea"
        },
        :answer => "B"
      },
      {
        :question => "How many orcas are in the K pod as of recent estimates",
        :choices => {
          :A => "15",
          :B => "20",
          :C => "55",
        }, 
        :answer => "A"
      },
      {
        :question => "Which pod does K pod often travel with?",
        :choices => {
          :A => "L pod",
          :B => "J pod",
          :C => "T pod"
        },
        :answer => "B"
      },
      {
        :question => "What is a significant threat to the K pod's survival?",
        :choices => {
          :A => "Overfishing",
          :B => "Climate change",
          :C => "Marine pollution",
        }, 
        :answer => "C"
      }
    ]
  end

  def launch_quiz
    puts "Quiz starts in 3, 2, 1... Go! Hit enter to proceed to the quiz."
    gets
    questions = question_bank
    questions_len = questions.length
    i = 0
    score = 0

    while i < questions_len
      question = questions[i]
      puts question[:question]
      question[:choices].each do |key, value|
        puts "#{key}: #{value}"
      end
      puts "Please enter your answer: "
      answer = gets.chomp.upcase
      if answer == question[:answer]
        score += 1
        puts "Incredible! Your answer is correct!"
      else
        puts "Sorry! Your answer is incorrect!"
      end
      i += 1
    end

    if score == questions_len
      puts "Wow you got a perfect score! #{score}/#{questions_len}!"
    elsif score >= questions_len / 2
      puts "Great job! #{score}/#{questions_len}. Keep up the good work!"   
    else
      puts "Looks like someone needs to study more... #{score}/#{questions_len}"
    end

    puts "Hit enter to return to the main menu..."
    gets
    MainMenu.new
  end

end
