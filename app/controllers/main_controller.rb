class MainController < ApplicationController
  def root
    @amount = []
    for i in 1..10 do
      @amount = @amount.append(i)
    end
  end

  def test
    @num = params[:num].to_i
    valid = true
    @listsub = []
    @listnum = []
    
    for i in 1..@num do
      if params["subject#{i}"].blank? or params["score#{i}"].blank?
      	valid = false
      	break  
      
      else
        @listsub = @listsub.append(params["subject#{i}"])
        @listnum = @listnum.append(params["score#{i}"].to_i)
      end
    end
    
    if valid and params[:root]=="false"
      @idx = @listnum.each_with_index.max[1]
      redirect_to controller: 'main', action: 'result', sub: @listsub[@idx], score: @listnum[@idx]
    end
  end

  def result
    puts params.inspect
  end
end
