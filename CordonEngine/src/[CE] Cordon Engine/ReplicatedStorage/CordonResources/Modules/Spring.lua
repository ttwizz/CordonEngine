local L_1_ = {}
function L_1_.new(L_2_arg1)
	local L_3_ = tick()
	local L_4_ = L_2_arg1 or 0
	local L_5_ = L_2_arg1 and 0 * L_2_arg1 or 0
	local L_6_ = L_2_arg1 or 0
	local L_7_ = 1
	local L_8_ = 1
	local function L_9_func(L_10_arg1)
		local L_11_ = L_10_arg1 - L_3_
		local L_12_ = L_4_ - L_6_
		if L_8_ == 0 then
			return L_4_, 0
		elseif L_7_ < 1 then
			local L_13_ = math.sqrt(1 - L_7_ ^ 2)
			local L_14_ = (L_5_ / L_8_ + L_7_ * L_12_) / L_13_
			local L_15_ = math.cos(L_13_ * L_8_ * L_11_)
			local L_16_ = math.sin(L_13_ * L_8_ * L_11_)
			local L_17_ = math.exp(L_7_ * L_8_ * L_11_)
			return L_6_ + (L_12_ * L_15_ + L_14_ * L_16_) / L_17_, L_8_ * ((L_13_ * L_14_ - L_7_ * L_12_) * L_15_ - (L_13_ * L_12_ + L_7_ * L_14_) * L_16_) / L_17_
		else
			local L_18_ = L_5_ / L_8_ + L_12_
			local L_19_ = math.exp(L_8_ * L_11_)
			return L_6_ + (L_12_ + L_18_ * L_8_ * L_11_) / L_19_, L_8_ * (L_18_ - L_12_ - L_18_ * L_8_ * L_11_) / L_19_
		end
	end
	return setmetatable({
		accelerate = function(L_20_arg1, L_21_arg2)
			local L_22_ = tick()
			local L_23_, L_24_ = L_9_func(L_22_)
			L_4_ = L_23_
			L_5_ = L_24_ + L_21_arg2
			L_3_ = L_22_
		end
	}, {
		__index = function(L_25_arg1, L_26_arg2)
			if L_26_arg2 == "value" or L_26_arg2 == "position" or L_26_arg2 == "p" then
				local L_27_, L_28_ = L_9_func(tick())
				return L_27_
			elseif L_26_arg2 == "velocity" or L_26_arg2 == "v" then
				local L_29_, L_30_ = L_9_func(tick())
				return L_30_
			elseif L_26_arg2 == "acceleration" or L_26_arg2 == "a" then
				local L_31_ = tick() - L_3_
				local L_32_ = L_4_ - L_6_
				if L_8_ == 0 then
					return 0
				elseif L_7_ < 1 then
					local L_33_ = math.sqrt(1 - L_7_ ^ 2)
					local L_34_ = (L_5_ / L_8_ + L_7_ * L_32_) / L_33_
					local L_35_ = (L_32_ * L_7_ ^ 2 - 2 * L_33_ * L_7_ * L_34_ - L_32_ * L_33_ ^ 2) * math.cos(L_33_ * L_8_ * L_31_)
					local L_36_ = (L_34_ * L_7_ ^ 2 + 2 * L_33_ * L_7_ * L_32_ - L_34_ * L_33_ ^ 2) * math.sin(L_33_ * L_8_ * L_31_)
					return L_8_ ^ 2 * (L_35_ + L_36_) / math.exp(L_7_ * L_8_ * L_31_)
				else
					local L_37_ = L_5_ / L_8_ + L_32_
					return L_8_ ^ 2 * (L_32_ - 2 * L_37_ + L_37_ * L_8_ * L_31_) / math.exp(L_8_ * L_31_)
				end
			elseif L_26_arg2 == "target" or L_26_arg2 == "t" then
				return L_6_
			elseif L_26_arg2 == "damper" or L_26_arg2 == "d" then
				return L_7_
			elseif L_26_arg2 == "speed" or L_26_arg2 == "s" then
				return L_8_
			elseif L_26_arg2 == "magnitude" or L_26_arg2 == "m" then
				local L_38_, L_39_ = L_9_func(tick())
				return L_38_.magnitude
			else
				error(L_26_arg2.." is not a valid member of spring", 0)
			end
		end;
		__newindex = function(L_40_arg1, L_41_arg2, L_42_arg3)
			local L_43_ = tick()
			if L_41_arg2 == "value" or L_41_arg2 == "position" or L_41_arg2 == "p" then
				local L_44_, L_45_ = L_9_func(L_43_)
				L_4_, L_5_ = L_42_arg3, L_45_
			elseif L_41_arg2 == "velocity" or L_41_arg2 == "v" then
				local L_46_, L_47_ = L_9_func(L_43_)
				L_4_, L_5_ = L_46_, L_42_arg3
			elseif L_41_arg2 == "acceleration" or L_41_arg2 == "a" then
				local L_48_, L_49_ = L_9_func(L_43_)
				L_4_, L_5_ = L_48_, L_49_ + L_42_arg3
			elseif L_41_arg2 == "target" or L_41_arg2 == "t" then
				L_4_, L_5_ = L_9_func(L_43_)
				L_6_ = L_42_arg3
			elseif L_41_arg2 == "damper" or L_41_arg2 == "d" then
				L_4_, L_5_ = L_9_func(L_43_)
				L_7_ = L_42_arg3 < 0 and 0 or L_42_arg3 < 1 and L_42_arg3 or 1
			elseif L_41_arg2 == "speed" or L_41_arg2 == "s" then
				L_4_, L_5_ = L_9_func(L_43_)
				L_8_ = L_42_arg3 < 0 and 0 or L_42_arg3
			else
				error(L_41_arg2.." is not a valid member of spring", 0)
			end
			L_3_ = L_43_
		end
	})
end
return L_1_