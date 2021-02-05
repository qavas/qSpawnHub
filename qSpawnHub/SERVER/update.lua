Citizen.CreateThread(
	function()
		local rawVersion = LoadResourceFile(GetCurrentResourceName(), 'update.json')
		if rawVersion then 
			local v = json.decode(rawVersion)
			PerformHttpRequest('https://raw.githubusercontent.com/qavas/qSpawnHub/master/update.json', function(code, res, headers)
				if code == 200 then 
					local versionRaw = json.decode(res)
					if versionRaw ~= v.version then 
							print(
								([[^1
-------------------------------------------------------
qSpawnHub
UPDATE: %s AVAILABLE
CHANGES: %s
-------------------------------------------------------
^0]]):format(
									versionRaw.version,
									versionRaw.changelog
								)
							)
						end
					else
						print('Error occurred in getting the update check for '.. GetCurrentResourceName())
					end
				end,
				'GET'
			)
		end
	end)