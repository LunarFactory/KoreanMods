mods.on_all_mods_loaded(function()
	mods["ReturnsAPI-ReturnsAPI"].auto({
		namespace = "KoreanMods",
		mp = true,
	})
	if Language and Language.register_autoload then
		Language.register_autoload(_ENV)
		log.info("LunarFactory-KoreanMods: 한국어 번역 로드 완료.")

		-- 스타스톰 모드가 로드되었는지 확인하고 로그로 알림
		if mods["RobomandosLab-StarstormReturns"] then
			log.info(
				"LunarFactory-KoreanMods: StarstormReturns 모드가 감지되었습니다. 전용 번역을 덮어씌웁니다!"
			)
		end
	end
end)
