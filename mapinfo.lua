--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- mapinfo.lua
--

local mapinfo = {
	name        = "Eye Of Horus",
	shortname   = "EoH",
	description = "Fight around the hills, or use bot to go between them",
	author      = "Icexuick, original from SirArrturi, Forboding Angel",
	version     = "1.7.1",
	modtype     = 3, --// 1=primary, 0=hidden, 3=map
	depend      = {},

	maphardness     = 300,
	notDeformable   = false,
	gravity         = 120,
	tidalStrength   = 18,
	maxMetal        = 1,
	extractorRadius = 90,
	voidWater       = false,
	autoShowMetal   = true,

	smf = {
		minheight = 200,
		maxheight = 560,
		smtFileName0 = "maps/Eye Of Horus.smt",
		--smtFileName0 = "",
		--smtFileName1 = "",
		--smtFileName.. = "",
		--smtFileNameN = "",
	},

	sound = {
		preset = "default",
		passfilter = {
			gainlf = 1.0,
			gainhf = 1.0,
		},
		reverb = { },
	},

	resources = {
		detailTex = "detailtexblurred.bmp",
		specularTex = "EyeOfHorus_Remake12_speculartex3.dds",
		splatDetailTex = "iwantDNTS.tga",
		splatDistrTex = "splat_distr.png", --sand, rock, pebbles, cracks
		detailNormalTex = "EyeOfHorus_Remake11_normals.dds", --holy crap we can do 8K?
		--skyReflectModTex = "skyreflectmodtex.dds",
		splatDetailNormalDiffuseAlpha = 1,
		splatDetailNormalTex2 = "perlin_noise_seamlessly_tileable_for_shaders_rgb rock2 1024.png"; --hehehe 'pebbles'
		splatDetailNormalTex1 = "torturedrock.png";
		splatDetailNormalTex3 = "Ground_LargeScaleRockyDirt_1k_dnts.tga";
		splatDetailNormalTex4 = "earth_NORM.dds";
		--lightEmissionTex = "",
	},

	splats = {
		TexScales		=	{ 0.006, 0.006, 0.002, 0.00868 },
		TexMults		=	{ 0.3, 0.3, 0.61, 0.52 },
	},

	atmosphere = {
		minWind      = 1,
		maxWind      = 25,

		fogStart     = 0.59,
		fogEnd       = 0.95,

		cloudColor = {
			0.89999998,
			0.89999998,
			0.89999998,
		},

		fogColor = {
			0.80000001,
			0.70000001,
			0.45,
		},

		skyColor = {
			0.42879999,
			0.58016002,
			0.63999999,
		},

		sunColor = {
			1,
			0.92,
			0.78,
		},
		skyDir       = {0.0, 0.0, -1.0},
		skyBox       = "cloudySea.dds",

		cloudDensity = 0.6,
	},

	grass = {
		bladeWaveScale = 1.1,
		bladeWidth  = 0.82,
		bladeHeight = 4.0,
		bladeAngle  = 2.57,
		bladeColor  = {0.59, 0.81, 0.57}, --// does nothing when `grassBladeTex` is set
	},
	lighting = {
		--// dynsun
		--sunStartAngle = 0.0,
		--sunOrbitTime  = 1440.0, --how do i turn this off?
		sunDir = {
			0.4045,
			0.5588,
			-0.7065,
		},

		--// unit & ground lighting
        groundambientcolor            = { 0.46, 0.46, 0.45 },
        grounddiffusecolor            = { 0.96, 0.96, 0.92 },
        -- groundambientcolor            = { 0.0, 0.0, 0.0 }, -- specular debugging
        -- grounddiffusecolor            = { 0.0, 0.0, 0.0 }, -- specular debugging
		groudspecularcolor            = {0.25,0.25,0.25},
     	groundshadowdensity           = 1.100,   
		unitAmbientColor = {
			  0.66,
			  0.66,
			  0.70,
		},    
		unitDiffuseColor = {
			  0.99,
			  0.99533332,
			  0.95000002,
		},
		unitSpecularColor = {
			  0.8,
			  0.60000001,
			  0.60000001,
		},
		unitshadowdensity          = 0.70,
		specularsuncolor           = { 1.0, 1.0, 1.0 },
		specularExponent    = 50.0,
	},

	water = {
		absorb    = {0.042, 0.120, 0.150},
		baseColor = {0.65, 0.45, 0.15},
		minColor  = {0.05, 0.035, 0.005},
		ambientFactor = 0.045,
		diffuseFactor = 1.75,
		blurBase = 1.1,
		blurExponent = 1.5,
		-- diffuseFactor = 1,
		foamTexture = "bitmaps/foam.jpg",
		forceRendering = false,
		fresnelMax = 0.80000001,
		fresnelMin = 0.1,
		fresnelPower = 4,
		hasWaterPlane = true,
		normalTexture = "bitmaps/waterbump.png",
		numTiles = 3,
		perlinAmplitude = 0.89999998,
		perlinLacunarity = 3,
		perlinStartFreq = 8,
		reflectionDistortion = 0.5,
		repeatX = 10,
		repeatY = 10,
		shoreWaves = true,
		specularFactor = 1.4,
		specularPower = 60,
		--waterPlaneColor = {0.55, 0.40, 0.15},
		texture = "bitmaps/ocean.jpg",
		--diffuseColor = {1, 1, 1},
		surfaceColor  = {0.75, 0.45, 0.10},
		surfaceAlpha  = 0.58,
		--planeColor = {0.30, 0.22, 0.05},
		specularColor = {0.65, 0.65, 0.70},
		causticsResolution = 83,
		causticsStrength = 0.13,
		waveoffsetfactor = 0.1,
		waveLength = 0.23,
		waveFoamIntensity = 1.12,
	},
	teams = {
		[0] = {startPos = {x = 2836, z = 1176}},
		[1] = {startPos = {x = 3308, z = 5992}},
		[2] = {startPos = {x = 5170, z = 989}},
		[3] = {startPos = {x = 1003, z = 6207}},
		[4] = {startPos = {x = 573, z = 1075}},
		[5] = {startPos = {x = 5557, z = 6078}},
	},

	terrainTypes = {
		[0] = {
			name = "Ground",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.0,
				kbot  = 1.0,
				hover = 1.0,
				ship  = 1.0,
			},
		},
		[255] = {
			name = "Low Road",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.3,
				kbot  = 1.3,
				hover = 1.3,
				ship  = 1.3,
			},
		},
		[170] = {
			name = "Medium Road",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.2,
				kbot  = 1.2,
				hover = 1.2,
				ship  = 1.2,
			},
		},
		[100] = {
			name = "High Road",
			hardness = 1.0,
			receiveTracks = true,
			moveSpeeds = {
				tank  = 1.1,
				kbot  = 1.1,
				hover = 1.1,
				ship  = 1.1,
			},
		},
	},

	custom = {
		grassConfig= {
			grassDistTGA = "maps/Eye of Horus 1.4_grassDist.tga",
			grassMaxSize = 1.5,
			grassBladeColorTex = "maps/grass_field_dry.dds.cached.dds", -- rgb + alpha transp
			grassShaderParams = { -- allcaps because thats how i know
				MAPCOLORFACTOR = 0.7, -- how much effect the minimapcolor has
				MAPCOLORBASE = 0.85,     --how much more to blend the bottom of the grass patches into map color
			},
		},
		fog = {
			color    = {0.26, 0.30, 0.41},
			height   = "40%", --// allows either absolue sizes or in percent of map's MaxHeight
			fogatten = 0.0075,
		},
		
		clouds = {
			speed = 0.2, -- multiplier for speed of scrolling with wind
			--color    = {0.49,0.37,0.25}, -- diffuse color of the fog OLD
			--color       = {0.23,0.17,0.24},
			color    	= {0.76,0.67,0.50},
			-- all altitude values can be either absolute, in percent, or "auto"
			-- High Clouds
			-- height   = 1200, 
			-- bottom = 600, 
			-- fade_alt = 1100, 
			-- Low Clouds
			height   = 260, -- opacity of fog above and at this altitude will be zero
			bottom = 200, -- no fog below this altitude
			fade_alt = 235, -- fog will linearly fade away between this and "height", should be between height and bottom

			scale = 600, -- how large will the clouds be
			opacity = 0.9, -- for low altitude
			--opacity = 0.55,
			clamp_to_map = true, -- whether fog volume is sliced to fit map, or spreads to horizon
			sun_penetration = 40, -- how much does the sun penetrate the fog
		},	
	},
}

return mapinfo
