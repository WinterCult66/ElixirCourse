defmodule Task do

    def triangle_pascal(num)  when is_number(num)   do           
        IO.puts("Tipe: 1")
        triangle_pascal(num, [[1]])
    end 

    def triangle_pascal(1, result) do
        IO.puts("Tipe: 2")
        Enum.reverse(result)
    end

    def triangle_pascal(num, [first | rest]) do
        IO.puts("Tipe: 3   #{first}")        
        new = next_row(first, [1])
        IO.puts("Tipe: 3.1   #{new}")        
        triangle_pascal(num - 1, [new, first | rest])
      end
    
      def next_row([value], result) do 
        IO.puts("Tipe: 4")        
        [value | result]
      end
    
      def next_row([first, second | rest], result) do
        IO.puts("Tipe: 5")        
        next_row([second | rest], [first + second | result])
    end


    def triangle_pascal(num)  when (is_binary(num) or is_boolean(num) or is_float(num) or is_atom(num))   do  
    IO.puts("#{num} not is accepted, only permit numbers")
    end 



    


    def fib(n)  when (is_binary(n) or is_boolean(n) or is_float(n) or is_atom(n))   do  
      IO.puts("#{n} not is accepted, only permit numbers")
  end 

    def fib(n) when n < 2, do: n


    def fib(n) do
      fib(n - 2) + fib(n - 1)
    end





end