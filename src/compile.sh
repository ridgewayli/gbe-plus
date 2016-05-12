export CPLUS_INCLUDE_PATH=./

if g++ -o gba/core.o -c -O3 -funroll-loops gba/core.cpp; then
	echo -e "Compiling Core...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Core...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/arm7.o -c -O3 -funroll-loops gba/arm7.cpp; then
	echo -e "Compiling ARMv7...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling ARMv7...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/dma.o -c -O3 -funroll-loops gba/dma.cpp; then
	echo -e "Compiling DMA...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling DMA...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/arm_instr.o -c -O3 -funroll-loops gba/arm_instr.cpp; then
	echo -e "Compiling ARM instructions...		\E[32m[DONE]\E[37m"
else
	echo -e "Compiling ARM instructions...		\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/thumb_instr.o -c -O3 -funroll-loops gba/thumb_instr.cpp; then
	echo -e "Compiling THUMB instructions...		\E[32m[DONE]\E[37m"
else
	echo -e "Compiling THUMB instructions...		\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/swi.o -c -O3 -funroll-loops gba/swi.cpp; then
	echo -e "Compiling SWI...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling SWI...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/mmu.o -c -O3 -funroll-loops gba/mmu.cpp; then
	echo -e "Compiling MMU...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MMU...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/lcd.o -c -O3 -funroll-loops gba/lcd.cpp -lSDL; then
	echo -e "Compiling LCD...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling LCD...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/apu.o -c -O3 -funroll-loops gba/apu.cpp -lSDL; then
	echo -e "Compiling APU...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling APU...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/opengl.o -c -O3 -funroll-loops gba/opengl.cpp -lSDL -lGL; then
	echo -e "Compiling OpenGL...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling OpenGL...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gba/gamepad.o -c -O3 -funroll-loops gba/gamepad.cpp -lSDL; then
	echo -e "Compiling Gamepad...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Gamepad...			\E[31m[ERROR]\E[37m"
	exit
fi

if ld -r gba/core.o gba/arm7.o gba/dma.o gba/arm_instr.o gba/thumb_instr.o gba/swi.o gba/mmu.o gba/lcd.o gba/apu.o gba/opengl.o gba/gamepad.o -o gba/gba.o; then
	echo -e "\E[32mGBA core complete...\E[37m"
else
	echo -e "\E[31mGBA core complete...\E[37m"
	exit
fi

#
#
#GBA core is done
#Move onto DMG/GBC core
#
#

if g++ -o dmg/core.o -c -O3 -funroll-loops dmg/core.cpp; then
	echo -e "Compiling Core...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Core...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/mbc1.o -c -O3 -funroll-loops dmg/mbc1.cpp; then
	echo -e "Compiling MBC1...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MBC1...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/mbc2.o -c -O3 -funroll-loops dmg/mbc2.cpp; then
	echo -e "Compiling MBC2...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MBC2...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/mbc3.o -c -O3 -funroll-loops dmg/mbc3.cpp; then
	echo -e "Compiling MBC3...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MBC3...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/mbc5.o -c -O3 -funroll-loops dmg/mbc5.cpp; then
	echo -e "Compiling MBC5...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MBC5...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/mmu.o -c -O3 -funroll-loops dmg/mmu.cpp; then
	echo -e "Compiling MMU...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling MMU...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/lcd.o -c -O3 -funroll-loops dmg/lcd.cpp -lSDL; then
	echo -e "Compiling LCD...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling LCD...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/apu.o -c -O3 -funroll-loops dmg/apu.cpp -lSDL; then
	echo -e "Compiling APU...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling APU...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/z80.o -c -O3 -funroll-loops dmg/z80.cpp; then
	echo -e "Compiling Z80...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Z80...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/opengl.o -c -O3 -funroll-loops dmg/opengl.cpp -lSDL -lGL; then
	echo -e "Compiling OpenGL...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling OpenGL...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/gamepad.o -c -O3 -funroll-loops dmg/gamepad.cpp; then
	echo -e "Compiling GamePad...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling GamePad...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o dmg/custom_graphics.o -c -O3 -funroll-loops dmg/custom_graphics.cpp; then
	echo -e "Compiling Custom GFX...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Custom GFX...			\E[31m[ERROR]\E[37m"
	exit
fi

if ld -r dmg/core.o dmg/mbc1.o dmg/mbc2.o dmg/mbc3.o dmg/mbc5.o dmg/mmu.o dmg/lcd.o dmg/apu.o dmg/z80.o dmg/opengl.o dmg/gamepad.o dmg/custom_graphics.o -o dmg/dmg.o; then
	echo -e "\E[32mGB/GBC core complete...\E[37m"
else
	echo -e "\E[31mGB/GBC core complete...\E[37m"
	exit
fi

#
#
#DMG core is done
#Move onto final compilation
#
#

if g++ -o common/config.o -c -O3 -funroll-loops common/config.cpp -lSDL; then
	echo -e "Compiling Config...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Config...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o common/hash.o -c -O3 -funroll-loops common/hash.cpp; then
	echo -e "Compiling Hash...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Hash...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o main.o -c -O3 -funroll-loops main.cpp; then
	echo -e "Compiling Main...			\E[32m[DONE]\E[37m"
else
	echo -e "Compiling Main...			\E[31m[ERROR]\E[37m"
	exit
fi

if g++ -o gbe_plus gba/gba.o dmg/dmg.o common/config.o common/hash.o main.o -lSDL -lGL; then
	echo -e "Linking Project...			\E[32m[DONE]\E[37m"
else
	echo -e "Linking Project...			\E[31m[ERROR]\E[37m"
	exit
fi