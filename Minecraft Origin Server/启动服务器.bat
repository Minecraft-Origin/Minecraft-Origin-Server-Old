@ECHO OFF
title Minecraft Origin Server
@echo.
@echo. -----------------------------------------------------------------
@echo.                     Minecraft Origin Server
@echo.
@echo.           注意: 关闭服务器前请在后台输入 stop 保存玩家数据
@echo.                      否则可能会出现回档情况
@echo.
@echo.                   服务器正在启动中,请稍等……
@echo. -----------------------------------------------------------------
java -Xms1024M -Xmx1024M -jar paperclip-1584.jar
@echo.
@echo. -----------------------------------------------------------------
@echo.               Minecraft --- 玩家数据保存完毕 已关服
@echo.
@echo.                         按任意键关闭该窗口
@echo. -----------------------------------------------------------------
pause
EXIT