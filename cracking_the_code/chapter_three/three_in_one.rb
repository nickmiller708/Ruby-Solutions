module CrackingTheCode
  module ChapterThree
    class ThreeInOne
      class StackFullError; end 
      class StackEmptyError; end 
      attr_accessor :stacks, :stack_number, :stack_size, :stack_capacity
      def initialize(stack_size = nil, stack_number = nil, stack_capacity = nil)
        @stack_number = stack_number || 3
        @stack_capacity = stack_capacity || 25 
        @stack_size = Array.new(@stack_number, 0 ) 
        @stacks = Array.new(@stack_number * @stack_capacity, 0 )
      end
      
      def last_index(stack_number)
        @stack_capacity*stack_number + @stack_size[stack_number]
      end   

      def is_empty?(stack_number)
        @stack_size[stack_number].zero?
      end

      def is_full?(stack_number)
        @stack_size[stack_number].eql?(@stack_capacity)
      end

      def push(insert, stack_number) 
        if is_full?(stack_number)
          raise StackFullError
        else
          index = last_index(stack_number)
          @stacks[index + 1] = insert
          @stack_size[stack_number] += 1       
        end
      end
      
      def pop(stack_number)
        if is_empty?(stack_number)
          raise StackEmptyError
        else
          index = last_index(stack_number)
          @stack_size[stack_number] -= 1
          @stacks.delete_at(index)
        end 
      end
      def peep(stack_number)
        if is_empty?(stack_number)
          raise StackEmptyError
        else
          index = last_index(stack_number)
          @stacks[index]
        end 
      end  
    end
  end
end

