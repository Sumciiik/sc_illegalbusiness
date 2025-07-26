Config = {}

Config.Debug = true 

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
    CoordsIn = { -- Teleport in
        [1] = vec3(961.5733, -206.4272, 73.1925),
        [2] = vec3(963.0541, -203.9742, 73.1181),
        [3] = vec3(965.2741, -200.3775, 73.2084),
        [4] = vec3(963.262, -199.285, 73.071),
        [5] = vec3(961.099, -202.664, 73.126),
    },
    CoordsOut = { -- Teleport out 
        [1] = vec3(961.5733, -206.4272, 73.1925),
        [2] = vec3(963.0541, -203.9742, 73.1181),
        [3] = vec3(965.2741, -200.3775, 73.2084),
        [4] = vec3(963.262, -199.285, 73.071),
        [5] = vec3(961.099, -202.664, 73.126),
    },
    Title = {
        [1] = '1',
        [2] = '2',
        [3] = '3',
        [4] = '4',
        [5] = '5',
    },
    Value = {
        [1] = '10',
        [2] = '20',
        [3] = '30',
        [4] = '40',
        [5] = '50',
    },
    Image = {
        [1] = '',
        [2] = '',
        [3] = '',
        [4] = '',
        [5] = '', 
    },
    Description = {
        [1] = '10',
        [2] = '20',
        [3] = '30',
        [4] = '40',
        [5] = '50',
    },
    Ids = { -- DO NOT TOUCH THIS
        [1] = 'counterfeit1',
        [2] = 'counterfeit2',
        [3] = 'counterfeit3',
        [4] = 'counterfeit4',
        [5] = 'counterfeit5',
    }
}