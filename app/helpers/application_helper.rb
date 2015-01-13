module ApplicationHelper
  def selectify(arr)
    res=[]
    for i in 0...arr.size
      res << [arr[i],i]
    end
    res
  end
end
