VORP = exports.vorp_inventory:vorp_inventoryApi()



Citizen.CreateThread(function()
	Citizen.Wait(2000)
	VORP.RegisterUsableItem("fishingrod", function(data)
		TriggerClientEvent('scf_fishing:StartFishing', data.source)
	end)
end)


RegisterNetEvent("fishing")
AddEventHandler("fishing", function()
	local r = math.random(1,10)
    local _source = source 
    if r < 3 then
		TriggerClientEvent("vorp:TipBottom", _source, "Bad luck this time", 6000)
	else
		VORP.addItem(_source, "fish",1)
        TriggerClientEvent("vorp:TipBottom", _source, "You got fish", 6000)
        
    end
end)

 