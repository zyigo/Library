-- see if the file exists
function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
function lines_from(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

-- Split a string by a delimiter
function stringsplit (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

-- Load Nuget Packages
function LoadNuget(proj,file)
  lines = lines_from(file)
  for k,v in pairs(lines) do
    line = stringsplit(v,":")
    if line[1] == proj then
      nuget {line[2] .. ":" .. line[3]}
    end
  end
end





