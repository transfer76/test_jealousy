require_relative "lib/test"
require_relative "lib/result_printer"

questions_path = __dir__ + "/data/questions.txt"
results_path = __dir__ + "/data/results.txt"

tester = Test.new(questions_path)
printer = ResultPrinter.new(results_path)

puts 'Enter your name: '
name = gets.encode("UTF-8").strip

puts "Hello #{name}! Answer the questions, please"

until tester.finished?
  puts tester.ask_question

  user_input = nil

  while user_input != 'Y' && user_input != 'N' && user_input != 'S'
    puts "Enter '(Y)es', '(N)o' or '(S)ometimes' and press 'Enter'"
    user_input = gets.chomp.capitalize
  end
  tester.score_user_answer(user_input)
end

printer.print_result(tester)
