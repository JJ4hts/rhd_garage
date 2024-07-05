return {
    ["Pátio do Detran"] = {
        type = {"car", "motorcycle", "cycles", "planes"},
        blip = { type = 68, color = 3 },
        zones = {
            points = {
                vec3(-326.11999511719, -977.40002441406, 31.0),
				vec3(-328.2799987793, -982.70001220703, 31.0),
				vec3(-342.13000488281, -977.77001953125, 31.0),
				vec3(-340.0, -972.40002441406, 31.0)
            },
            thickness = "4.0"
        },
        spawnPoint = {
            vec4(-329.05993652344, -978.49676513672, 30.808248519897, 340.5),
			vec4(-332.25671386719, -977.69073486328, 30.808248519897, 340.5),
			vec4(-335.37609863281, -976.12542724609, 30.808248519897, 340.5)
        },
        impound = true,
        interaction = "keypressed"
    },
    ["Garagem Vermelho"] = {
        type = {"car", "motorcycle", "cycles"},
        zones = {
            points = {
                vec3(-364.39999389648, -863.75, 31.0),
				vec3(-350.14999389648, -866.75, 31.0),
				vec3(-350.76000976563, -870.79998779297, 31.0),
				vec3(-315.33999633789, -878.30999755859, 31.0),
				vec3(-322.05999755859, -914.32000732422, 31.0),
				vec3(-364.76000976563, -910.55999755859, 31.0)
            },
            thickness = "4.0"
        },
        spawnPoint = {
            vec4(-343.69281005859, -876.05133056641, 30.79907989502, 168.0),
			vec4(-340.14736938477, -876.87512207031, 30.79907989502, 168.0),
			vec4(-336.52142333984, -877.72271728516, 30.79907989502, 168.0),
			vec4(-333.02697753906, -878.49060058594, 30.799663543701, 168.0),
			vec4(-329.47848510742, -879.34045410156, 30.799629211426, 168.0),
			vec4(-325.66702270508, -879.89813232422, 30.799869537354, 168.0),
			vec4(-322.23013305664, -880.6669921875, 30.800930023193, 168.0),
			vec4(-318.55856323242, -881.38354492188, 30.806568145752, 168.0),
			vec4(-338.23052978516, -890.28735351563, 30.79907989502, 349.0),
			vec4(-334.58505249023, -891.38488769531, 30.79907989502, 349.0),
			vec4(-330.89028930664, -892.10687255859, 30.799188613892, 349.0),
			vec4(-327.26232910156, -892.87963867188, 30.799728393555, 349.0),
			vec4(-323.73522949219, -893.68505859375, 30.800128936768, 349.0),
			vec4(-320.10021972656, -894.46246337891, 30.800788879395, 349.0)
        },
        vehicles = {},
        interaction = {
            model = "ig_floyd",
            coords = vec4(-348.56878662109, -876.50671386719, 31.071443557739, 176.0)
        },
    },

    ["Garagem Central"] = {
        type = {"car", "motorcycle", "cycles"},
        zones = {
            points = {
                vec3(64.519996643066, -865.46997070313, 30.0),
				vec3(51.970001220703, -897.96002197266, 30.0),
				vec3(15.770000457764, -884.26000976563, 30.0),
				vec3(27.479999542236, -851.30999755859, 30.0)
            },
            thickness = "4"
        },
        spawnPoint = {
            vec4(50.582141876221, -873.78234863281, 30.158012390137, 160.0),
			vec4(47.512405395508, -872.20220947266, 30.174304962158, 160.0),
			vec4(43.754459381104, -871.59020996094, 30.174667358398, 160.0),
			vec4(52.910739898682, -887.10736083984, 29.970676422119, 340.0),
			vec4(49.700912475586, -885.98522949219, 29.977535247803, 340.0),
			vec4(46.402614593506, -884.66284179688, 29.987743377686, 340.0),
			vec4(43.070400238037, -883.40631103516, 29.997058868408, 340.0),
			vec4(39.832046508789, -882.28216552734, 30.004152297974, 340.0)
        },
        vehicles = {},
        interaction = {
            model = "ig_trafficwarden",
            coords = vec4(53.668476104736, -876.31207275391, 30.401546478271, 75.0)
        },
    },

    ["Garagem de Paleto"] = {
        type = {"car", "motorcycle", "cycles"},
        zones = {
            points = {
                vec3(-385.39999389648, 6081.0, 32.0),
				vec3(-375.17001342773, 6064.4799804688, 32.0),
				vec3(-392.26000976563, 6047.1401367188, 32.0),
				vec3(-397.80999755859, 6041.6801757813, 32.0),
				vec3(-408.55999755859, 6053.7700195313, 32.0)
            },
            thickness = "4.0"
        },
        spawnPoint = {
            vec4(-393.65414428711, 6061.8515625, 31.227752685547, 200.0),
			vec4(-396.54815673828, 6059.0126953125, 31.227752685547, 200.0)
        },
        vehicles = {},
        interaction = {
            model = "ig_floyd",
            coords = vec4(-392.48675537109, 6068.1245117188, 31.500118255615, 217.5)
        },
    },
}