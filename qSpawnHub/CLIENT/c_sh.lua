-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------DO NOT EDIT IF YOU DO NOT KNOW WHAT YOU'RE DOING------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--colors
fullColor = 255
halfColor = 123
lowColor = 10

--scales
pointTwo = 0.2
pointoneSeven = 0.17
pointoneFive = 0.15
pointOne = 0.1
pointzeroSeven = 0.07
halfpointOne = 0.05
pointzeroThree = 0.03




Citizen.CreateThread(function()
    SetText()
end)

function SetText()
      while true do
         Citizen.Wait(0)         

      if GetDistanceBetweenCoords( -408.50, 1163.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 25.0 then
      if Config.admins then
         displayText( -421.50, 1165.00, 326.00  -1.900, "Our Team", Config.r, Config.g, Config.b, pointoneFive, pointoneFive)
         displayText( -422.61, 1163.81, 326.00  -1.100, Config.admin1, Config.admin1r, Config.admin1g, Config.admin1b, pointOne, pointOne)
         displayText( -421.89, 1166.58, 326.00  -1.100, Config.admin2, Config.admin2r, Config.admin2g, Config.admin2b, pointOne, pointOne)
         displayText( -422.61, 1163.81, 326.00  -1.400, Config.admin1info, fullColor, fullColor, fullColor, pointzeroSeven, pointzeroSeven)
         displayText( -421.89, 1166.58, 326.00  -1.400, Config.admin2info, fullColor, fullColor, fullColor, pointzeroSeven, pointzeroSeven)

      else
      end
      if Config.serverinfo then
         displayText( -408.50, 1161.00, 326.00  -1.200, "Server Info", Config.r, Config.g, Config.b, pointoneFive, pointoneFive)
         displayText( -408.50, 1161.00, 326.00  -1.600, Config.discordlink, 255, 255, 255, pointzeroSeven, pointzeroSeven)
         displayText( -408.50, 1161.00, 326.00  -1.900, Config.website, 255, 255, 255, pointzeroSeven, pointzeroSeven)
      else
      end
      end      

      if GetDistanceBetweenCoords( -419.50, 1166.00, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 40.0 then
         displayText( -411.96, 1172.74, 326.00  -1.200, "Welcome to", Config.r, Config.g, Config.b, pointOne, pointoneSeven)
         displayText( -411.96, 1172.74, 326.00  -1.600, Config.servername, Config.r, Config.g, Config.b, pointTwo, pointTwo) 
         displayText( -411.96, 1172.74, 326.00  -2.075, Config.website, Config.r, Config.g, Config.b, pointOne, pointOne)
      if Config.commands then
         displayText( -416.65, 1155.67, 326.87  -0.700, "Server Commands", Config.r, Config.g, Config.b, pointTwo, pointoneSeven) 

         displayText( -416.65, 1155.67, 326.87  -1.200, Config.command1, fullColor, fullColor, fullColor, pointOne, halfpointOne)
         displayText( -416.65, 1155.67, 326.87  -1.400, Config.command2, fullColor, fullColor, fullColor, pointOne, halfpointOne)
         displayText( -416.65, 1155.67, 326.87  -1.600, Config.command3, fullColor, fullColor, fullColor, pointOne, halfpointOne)
         displayText( -416.65, 1155.67, 326.87  -1.800, Config.command4, fullColor, fullColor, fullColor, pointOne, halfpointOne)
         displayText( -416.65, 1155.67, 326.87  -2.000, Config.command5, fullColor, fullColor, fullColor, pointOne, halfpointOne)
         displayText( -416.65, 1155.67, 326.87  -2.200, Config.command6, fullColor, fullColor, fullColor, pointOne, halfpointOne)
      else
      end

      end   
   end
end


function displayText(x,y,z,textin3D,r,g,b,sizeonX,sizeonY)
   local playerx,playery,playerz=table.unpack(GetGameplayCamCoords())
   local dist = GetDistanceBetweenCoords(playerx,playery,playerz, x,y,z, 1)    
   local size = (1/dist)*20
   local fov = (1/GetGameplayCamFov())*100
   local size = size*fov   
         SetTextFont(Config.font)
         SetTextScale(sizeonX * size, sizeonY * size)
         SetTextProportional(1)
         SetTextCentre(1)
         SetTextColour(r, g, b, 255)
         SetTextDropshadow(10, Config.r, Config.g, Config.b, 255)
         SetTextEdge(5, 0, 0, 0, 255)
         SetTextOutline()
         SetTextEntry("STRING")
         AddTextComponentString(textin3D)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
end