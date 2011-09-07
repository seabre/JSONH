require "jsonh/version"
require 'json'

#This is based heavily off of the python port of JSONH

module JSONH

  class << self

  def dump(obj)
    return JSON.dump(pack(obj))
  end

  
  def load(str)
    return unpack(JSON.load(str))
  end


  def pack(dict_list)
    length = dict_list.length
    keys = []
    
    if !length.nil? and length > 0
      keys = dict_list[0].keys
    end
    
    klength = keys.length
    result = []
    i = 0
    
    while i < length
      o = dict_list[i]
      ki = 0
    
      while ki < klength
        result << o[keys[ki]]
        ki = ki.next
      end
      i = i.next
    end
    return [klength] + keys + result
  end

  def unpack(hlist)
    length = hlist.length
    klength = hlist[0]
    result = []
    i = klength.next
    while i < length
      o = {}
      ki = 0
      while ki < klength
          ki = ki.next
          o[hlist[ki]] = hlist[i]
          i = i.next
      end
      result << o
    end
    return result
  end
end
end
