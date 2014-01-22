module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | EstiloDeAprendizaje"      
    end
  end
end
