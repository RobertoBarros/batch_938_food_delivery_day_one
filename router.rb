class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run

    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end

  end

  private

  def print_actions
    puts "Select option:"
    puts "1. Create a Meal"
    puts "2. List all meals"
    puts "-" * 50
    puts "3. Create Customer"
    puts "4. List all Customers"
    puts "-" * 50
    puts "Enter option:"
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
