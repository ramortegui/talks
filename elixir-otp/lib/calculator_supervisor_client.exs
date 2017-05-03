import_file("calculator_genserver.ex")
import_file("calculator_supervisor.ex")
CalculatorSupervisor.start_link(10)

