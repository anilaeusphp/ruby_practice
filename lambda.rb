lambda1 = lambda {}

lambda2 = -> {}



multiplier = -> (arg1,arg2) { puts arg1*arg2}


multiplier.call 3,5  # 15



# another difference between lambda and proc is

def proc_method
  p = proc { return "Proc process done"}
  puts p.call
  return "proc method is done from end!"
end

def lambda_method
  l = -> { return "Lambda process is being processed"}
  puts l.call
  return "Lambda is done!"
end

puts proc_method, lambda_method
# Lambda process is being processed
# Proc process done
# Lambda is done!
