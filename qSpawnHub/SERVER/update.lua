PerformHttpRequest("https://github.com/qavas/qSpawnHub/blob/main/version.txt", function(err, serverVersion, headers)
    local version = "v1.0.0"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("\n")
        print("|--------------------- qSpawnHub -----------------------|")
        print("|------- ^1Your version of qSpawnHub is outdated^7 -------|")
        print("|--------- https://github.com/qavas/qSpawnHub ----------|")
        print("|-------------------------------------------------------|")
        print("\n")
    else
        Wait(120)
        print("\n")
        print("|---------------------- qSpawnHub ----------------------|")
        print("|-------   ^2qSpawnHub is on the newest version!^7   -------|")
        print("|-------------------------------------------------------|")
    end
end)