Config = {}

Config.AllowedBusinesses = {
    WeedFarm = false,    -- Weed,Weed Seeds etc.
    MethLab = false,    -- Meth
    CocaineLab = false,     -- Cocaine 
    CounterfeitFactory = true, -- Fake Money/Dirty Money,Fake Documents etc.
}

Config.Peds = {
    BusDealer = { -- -- The guy you buy businesses from 
        Coords = vec4(957.4016, -207.6423, 73.0983, 328.9650),
        Model = 'g_m_y_strpunk_02',
        Animation = '', -- leave blank for no animation 
    }
}

Config.WeedFarm = {}
Config.MethLab = {}
Config.CocaineLab = {}

Config.CounterfeitFactory = { -- If you want to add new location you need to add everything the same number,
    CoordsIn = {
        [1] = vec3(961.5733, -206.4272, 73.1925),
        [2] = vec3(963.0541, -203.9742, 73.1181),
        [3] = vec3(965.2741, -200.3775, 73.2084),
        [4] = vec3(0,0,0),
        [5] = vec3(0,0,0),
    },
    CoordsOut = {
        [1] = vec3(0,0,0),
        [2] = vec3(0,0,0),
        [3] = vec3(0,0,0),
        [4] = vec3(0,0,0),
        [5] = vec3(0,0,0),
    },
}