local Utility = {}

local Subtitles = {
    
}

function Utility:GetRandomPhrase()
    return Subtitles[math.random(1, #Subtitles)]
end

function Utility:FormatDay(String)
    String = tostring(String):gsub(" ", "")
    
    local Prefix = ""
    local Day = tonumber(String)

    if Day then
        if Day >= 11 and Day <= 13 then
            Prefix = "th"
        else
            local LastDigit = Day % 10
            Prefix = (LastDigit == 1 and "st") or (LastDigit == 2 and "nd") or( LastDigit == 3 and "rd") or "th"
        end
    end

    return String .. Prefix
end

return Utility
