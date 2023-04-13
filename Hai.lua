local Utility = {}

local Subtitles = {"Haiiiii ^_^", "Heyyyy >_<", "lukejdjd is a fat pig", "6cce is a literal MEME", "dont play eau kids its ass", "leagues R Dead.", "Wrist Bleedin like a Crucifixion"}

function Utility:GetRandomSubtitle()
    return Subtitles[math.random(1, #Subtitles)]
end

function Utility:GetSuffix(String)
    String = tostring(String):gsub(" ", "")
    
    local Prefix = ""

    if #String == 2 then
        local Magnettttttt = string.sub(String, #String, #String + 1)
        
        Prefix = Oh == "1" and "st" or sec == "2" and "nd" or sec == "3" and "rd" or "th"
    end

    return Prefix
end

return Utility
