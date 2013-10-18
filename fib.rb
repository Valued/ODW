
def fib (n)
	if n == 1 || n == 2 
		then result = 1
		else result = fib(n-1) + fib(n-2)
	end
end

def fib2(n)
	n == 1 || n == 2 ? 1 : fib2(n-1) + fib2(n-2)
end

def fib3(n)
	(1..2).include?(n) ? 1 : fib3(n-1) + fib3(n-2)
end

def fib4(n)
	fi, fim1 = 1, 1
	for i in 3..n
	 fit = fi
	 fi += fim1
	 fim1 = fit
	end 
	return fi
end

def fib42(n)
        fi = n == 0 ? 0 : 1
        fim1 = 1
        (n-2).times do
          fit = fi; fi += fim1; fim1 = fit
        end
        fi
end

def fib43(n)
 fi = n == 0 ? 0 : 1
  fim1 = 1
   (n-2).times do
     fi, fim1 = fi + fim1, fi
   end
 fi
end

def fib5(n)
   if n < 1 then "undefined"
   else n == 1 || n == 2 ? 1 : fib5(n-1) + fib5(n-2)
   end
end

def fib6(n) # для последовательности 1, 1, 2, 3, 5, 8, 13, 21... с "защитой от дурака"
    n < 1 ? "undefined" : n == 1 || n == 2 ? 1 : fib6(n-1) + fib6(n-2)
end

def fib7(n) # для последовательности 0, 1, 1, 2, 3, 5, 8, 13, 21... с "защитой от дурака" (F0 = 0)
	n < 0 ? "undefined" : n == 0 ? 0 : n == 1 ? 1 : fib7(n-1) + fib7(n-2)
end

def fib8(n) # для последовательности 0, 1, 1, 2, 3, 5, 8, 13, 21... с "защитой от дурака" (F1 = 0)
	n < 1 ? "undefined" : n == 1 ? 0 : n == 2 ? 1 : fib8(n-1) + fib8(n-2)
end

def fib9(n)
	if n < 1
	 "undefined"
	elsif n == 1
	 1
	elsif n == 2
	 @fm2 = 1
	 1
	elsif
	 tmp = fib9(n-1)
	 tmp2 = tmp + @fm2
	 @fm2 = tmp
	 tmp2
	end
end
num = gets.to_i
#puts fib(num)
#puts fib2(num)
#puts fib3(num)
puts fib4(num)
puts fib42(num)
puts fib43(num)
#puts fib5(num)
#puts fib6(num)
#puts fib7(num)
#puts fib8(num)
puts fib9(num)