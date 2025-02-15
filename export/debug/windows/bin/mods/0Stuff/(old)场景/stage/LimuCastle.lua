function onCreate()
	-- background shit
	makeLuaSprite('Stage-BG', 'Stage-BG', -600, -300);
	setScrollFactor('Stage-BG', 1, 1);
	scaleObject('Stage-BG', .9, .9);
	
	makeLuaSprite('Stage-Torch', 'Stage-Torch', -600, -300);
	setScrollFactor('Stage-Torch', 1, 1);
	scaleObject('Stage-Torch', .9, .9);


	--Web, in front of player
	makeLuaSprite('Stage-WebR','Stage-WebR',900, 550);
	setScrollFactor('Stage-WebR', 0.6, 0.6);
	scaleObject('Stage-WebR', .9, .9);

	makeLuaSprite('Stage-WebL','Stage-WebL',-400, -300);
	setScrollFactor('Stage-WebL', 0.6, 0.6);
	scaleObject('Stage-WebL', .9, .9);

	makeAnimatedLuaSprite('FlameL', 'Flame', -160, -140)
	makeAnimatedLuaSprite('FlameR', 'Flame', 480, -150)
	setScrollFactor('FlameL', 1, 1);
	setScrollFactor('FlameR', 1, 1);
	--scaleObject('Stage-Torch', 1.1, 1.1);

	
	addLuaSprite('Stage-BG', false);
	addLuaSprite('FlameL', false);
	addLuaSprite('FlameR', false);
	addLuaSprite('Stage-Torch', false);

	addLuaSprite('Stage-WebL',true);
	addLuaSprite('Stage-WebR',true);

	addAnimationByPrefix('FlameL', 'FlameNormal', 'FlameNormal', 24, true)
	addAnimationByPrefix('FlameR', 'FlameNormal', 'FlameNormal', 24, true)
	objectPlayAnimation('FlameR', 'FlameNormal', false)
	objectPlayAnimation('FlameL', 'FlameNormal', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end