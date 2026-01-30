function ExportEnumsToFile()
    Printf("ExportEnumsToFile")
    local fileName = "enumsList.txt"
    local file = io.open("D:\\Downloads\\"..fileName, "w")
    if file then

        local enumsNames = {}

        for enum, _ in pairs(Enums) do
            table.insert(enumsNames, enum)
        end

        table.sort(enumsNames)

        for _, enumName in ipairs(enumsNames) do
            file:write("Enum: [" .. enumName .. "]\n")

            local enumKeys = {}
            for key, _ in pairs(Enums[enumName]) do
                table.insert(enumKeys, key)
            end

            table.sort(enumKeys)

            for _, key in ipairs(enumKeys) do
                file:write("Key: [" .. key .. "] Value: [" .. tostring(Enums[enumName][key]) .. "]\n")
            end
        end

        file:close()
        Printf("Enums exported to '"..fileName.."'")
    else
        Printf("Failed to open '"..fileName.."'")
    end
end

return ExportEnumsToFile
