function onCreate()
  makeLuaSprite('bg','normal_stage',-650,-300)
  scaleObject('bg',1.1,1.1)
  makeLuaSprite('table','sumtable',-650,-300)
  scaleObject('table',1.1,1.1)
  addLuaSprite('bg',false)
  addLuaSprite('table',true)
  close(true);
  end