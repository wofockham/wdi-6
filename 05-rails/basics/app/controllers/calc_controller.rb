class CalcController < ApplicationController
  def calculate
    @x = params[:x].to_f
    @y = params[:y].to_f

    @result = case params[:operator]
    when '+' then @x + @y
    when '-' then @x - @y
    when '*' then @x * @y
    end
  end
end