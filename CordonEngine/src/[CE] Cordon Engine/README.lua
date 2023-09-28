--[[
	
	CONVERTING FROM ACS TO CE? FOLLOW THESE STEPS:
		
		Step 1: Navigate to your View Tap in studio
		
		Step 2: Open your command bar
		
		Step 3: Place all your ACS Client models into the CE Client Model Folder
			and do the same with the server models
		
		Step 4: Make sure each of the client models has a Shell component if a Chamber component is present
		
		Step 5: Copy and paste this next block of code into your Command Bar and press enter on your keyboard
		
		for _, v in pairs(game.ReplicatedStorage.CordonResources.Models.Client:GetDescendants()) do
			if v then
				if v.Name == "SmokePart" then
					v.Name = "FirePart"
				elseif v.Name == "Handle" then
					v.Name = "Grip"
				elseif v.Name == "SlidePull" then
					v.Name = "BoltBack"
				elseif v.Name == "SlideRelease" then
					v.Name = "BoltForward"
				elseif v.Name == "AimUp" or v.Name == "AimDown" then
					v:Destroy()
				end;
			end;
		end
		
--]]