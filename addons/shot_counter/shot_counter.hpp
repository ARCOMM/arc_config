// Copy these to your mission's description.ext or include them with the following:
/*
    #if __has_include("\z\arc_cfg\addons\shot_counter\shot_counter.hpp")
        #include "\z\arc_cfg\addons\shot_counter\shot_counter.hpp"
    #endif
*/

class arc_cfg_shot_counter_countTeams {
    title = "Munitions Expended by Teams";
    variable = "arc_cfg_shot_counter_countTextTeams";
};

class arc_cfg_shot_counter_countPlayer {
    title = "Munitions Expended by You";
    variable = "arc_cfg_shot_counter_countTextPlayer";
};
