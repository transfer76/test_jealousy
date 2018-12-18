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

    if tester.user_answer >= 30
      puts @results[0]
    elsif tester.user_answer >= 25
      puts @results[1]
    elsif tester.user_answer >= 19
      puts @results[2]
    elsif tester.user_answer >= 14
      puts @results[3]
    elsif tester.user_answer >= 9
      puts @results[4]
    elsif tester.user_answer >= 4
      puts @results[5]
    else
      puts @results[6]
    end
  end
end

