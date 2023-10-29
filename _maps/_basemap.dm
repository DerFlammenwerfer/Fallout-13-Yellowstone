//#define LOWMEMORYMODE //uncomment this to load centcom and runtime station and thats it.

#include "map_files\generic\CentCom.dmm"

#ifndef LOWMEMORYMODE
	#ifdef ALL_MAPS
		#include "map_files\Yellowstone\Dungeons.dmm",
		#include "map_files\Yellowstone\Casper-Below.dmm",
		#include "map_files\Yellowstone\Casper.dmm",
		#include "map_files\Yellowstone\Casper-Upper.dmm",
		#include "map_files\Yellowstone\Bighorn-Buffalo-Cheyenne-Harrison.dmm",
		#include "map_files\Yellowstone\Bighorn-Buffalo-Cheyenne-Harrison-Upper.dmm",
		#include "map_files\Yellowstone\I80-Reservation-RockSprings-Yellowstone.dmm"
		#ifdef TRAVISBUILDING
			#include "templates.dm"
		#endif
	#endif
#endif
