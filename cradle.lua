-- Tab character
Tab = "\t"

-- Look ahead character (global)
Look = ""

-- read new character from the input stream
function GetChar()
	Look = io.read(1)
end

-- report errors
function Error(msg)
	io.write("\n")
	io.write("\aError: " .. msg .. ".\n")
end

-- report an error and halt
function Abort(msg)
	Error(msg)
	os.exit(1)
end

-- report what was expected
function Expected(msg)
	Abort(msg .. "Expected")
end

-- match a specific input character
function Match(ch)
	if Look == ch then
		GetChar()
	else
		Expected("" .. ch .. "")
	end
end

-- recognise an alpha character | note "%a" is the check for Alpha chars
function isAlpha(ch)
	return ch:match("%a") ~= nil
end
