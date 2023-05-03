--------------------------------------------
------ Napisane przez stasiak#3050 ------
--------------------------------------------

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("stasiak_10-13:request")
AddEventHandler("stasiak_10-13:request", function(Officer)
	TriggerClientEvent("stasiak_10-13:alert", -1, source, Officer)
end)

ESX.RegisterServerCallback('stasiak_10-13:checkjob', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
 	if xPlayer.job.name == 'police' then
		cb(true)
	else
		cb(false)
	end
end)

--------------------------------------------
------ Napisane przez stasiak#3050 ------
--------------------------------------------