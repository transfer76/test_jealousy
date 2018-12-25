class ResultPrinter
  def initialize(results_path)
    unless File.exist?(results_path)
      abort "File with results #{results_path} is not found"
    end

    file = File.new(results_path, 'r')
    @results = file.readlines
    file.close
  end

  def print_result(tester)
    puts "Your result: #{tester.user_answer}"

    case tester
    when tester.user_answer >= 30 then puts @results[0]
    when tester.user_answer >= 25 then puts @results[1]
    when tester.user_answer >= 19 then puts @results[2]
    when tester.user_answer >= 14 then puts @results[3]
    when tester.user_answer >= 9 then puts @results[4]
    when tester.user_answer >= 4 then puts @results[5]
    else
      puts @results[6]
    end
  end
end
