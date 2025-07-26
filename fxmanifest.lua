version '0.1'
author 'Sumec'
description 'Illegal Business'
fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@es_extended/imports.lua',
}

dependency 'ox_lib'
dependency 'ox_target'
dependency 'ox_inventory'
dependency 'es_extended'

client_scripts 
{
    'client/*.lua',
    'client/counterfeit/*.lua',
}

server_scripts
{
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'server/counterfeit/*.lua',
}