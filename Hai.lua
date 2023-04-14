local Utility = {}

local Subtitles = {
    "Haiiiii ^_^", 
    "Heyyyy >_<", 
    "lukejdjd is a fat pig", 
    "6cce is a literal MEME", 
    "dont play eau kids its ass", 
    "leagues R Dead.", 
    "Wrist Bleedin like a Crucifixion",
    "Go dig MY GRAVE",
    "I dont dial 911.",
    "Olurgs is a fat glob who dont stop playin hoopz",
    "all of the hoopz mods need to off themselves besides kyraizo and readn they cool"
}

function Utility:GetRandomSubtitle()
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
            Prefix = LastDigit == 1 and "st" or LastDigit == 2 and "nd" or LastDigit == 3 and "rd" or "th"
        end
    end

    return String .. Prefix
end

return Utility
