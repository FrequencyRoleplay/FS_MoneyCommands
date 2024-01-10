local QBCore = exports['qb-core']:GetCoreObject()
local Notifications =  Config.Notifications


-- /cash command
RegisterCommand(Config.CashCommand, function()
    TriggerServerEvent("moneycommands:getPlayerCash")
end, false)

-- /bank command
RegisterCommand(Config.BankCommand, function()
    TriggerServerEvent("moneycommands:getPlayerBank")
end, false)

-- /dono command
RegisterCommand(Config.DonoCommand, function()
    TriggerServerEvent("moneycommands:getPlayerDono")
end, false)

-- /dono command
RegisterCommand(Config.CryptoCommand, function()
    TriggerServerEvent("moneycommands:getPlayerCrypto")
end, false)

RegisterNetEvent("moneycommands:showPlayerCash")
AddEventHandler("moneycommands:showPlayerCash", function(cashAmount)
    if Notifications == "ox" then
        -- OxLib notification
        lib.notify({
            title = "Notification title",
            description = "Your current cash: $" .. cashAmount,
            type = "success"
        })
    elseif Notifications == "qb" then
        -- QB notification
        QBCore.Functions.Notify("Your current cash: $" .. cashAmount, "success")

    elseif Notifications == "other" then
        -- Use other notification method (replace with your custom function)

    end
end)


RegisterNetEvent("moneycommands:showPlayerBank")
AddEventHandler("moneycommands:showPlayerBank", function(bankAmount)
    if Notifications == "ox" then
        -- OxLib notification
        lib.notify({
            title = "Notification title",
            description = "Your current bank: $" .. bankAmount,
            type = "success"
        })
    elseif Notifications == "qb" then
        -- QB notification
        QBCore.Functions.Notify("Your current bank: $" .. bankAmount, "success")

    elseif Notifications == "other" then
        -- Use other notification method (replace with your custom function)

    end
end)

-- Event for displaying donation balance
RegisterNetEvent("moneycommands:showPlayerDono")
AddEventHandler("moneycommands:showPlayerDono", function(donoAmount)
    if Notifications == "ox" then
        -- OxLib notification
        lib.notify({
            title = "Notification title",
            description = "Your current donocoins: $" .. donoAmount,
            type = "success"
        })
    elseif Notifications == "qb" then
        -- QB notification
        QBCore.Functions.Notify("Your current donocoins: $" .. donoAmount, "success")

    elseif Notifications == "other" then
        -- Use other notification method (replace with your custom function)

    end
end)

-- Event for displaying donation balance
RegisterNetEvent("moneycommands:showPlayerCrypto")
AddEventHandler("moneycommands:showPlayerCrypto", function(cryptoAmount)
    if Notifications == "ox" then
        -- OxLib notification
        lib.notify({
            title = "Notification title",
            description = "Your current Crypto: $" .. cryptoAmount,
            type = "success"
        })
    elseif Notifications == "qb" then
        -- QB notification
        QBCore.Functions.Notify("Your current Crypto: $" .. cryptoAmount, "success")

    elseif Notifications == "other" then
        -- Use other notification method (replace with your custom function)

    end
end)