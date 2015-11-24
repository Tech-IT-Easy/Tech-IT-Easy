-----------------------------------------------------------
-- This class is handles all the network connection.
--
-- @Author:Created by Daniel, Nov 24,2015
-----------------------------------------------------------

local Object = require('toolkit.Object')

local http = require("socket.http")
local ltn12 = require("ltn12")
local json = require("lib.json")

Network = extends(Object)


-----------------------------------------------------------
-- Construct method
-- @return :Network a new instance of a network
-- @author Daniel
-----------------------------------------------------------
function Network:new()
  local o = Network:super()
  return Network:init(o)
end

-----------------------------------------------------------
-- Makes a HTTP request and parse the data and returns the firstname.
-- @return string with the firstname from the API request.
-- @author Daniel
-----------------------------------------------------------
function Network:getFirstname()
  local t = {}
  http.request{
      url = "http://api.randomuser.me/?seed=techiteasy",
      -- url = "http://2015-3.pumi.ida.liu.se:9000/users/",
      sink = ltn12.sink.table(t)
  }
  table = table.concat(t)
  jsonResult = json.parse(table)
  -- For 2015-3.pumi
  -- return jsonResult[1].username
  -- For randomuser.me
  return jsonResult["results"][1].user.name.first
end

return Network