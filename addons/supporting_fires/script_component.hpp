#define COMPONENT supporting_fires
#define COMPONENT_BEAUTIFIED Supporting Fires
#include "\z\arc_cfg\addons\main\script_mod.hpp"
#include "\z\arc_cfg\addons\main\script_macros.hpp"

#define def_fireMissionBriefingMessage \
    player createDiarySubject ["Supporting Fires", "Supporting Fires"]; \
    player createDiaryRecord ["Supporting Fires", ["How To Use", " \
        <br/><font color='#FF8C00' size='16'>How To Use</font>\
        <br/>\
        <br/><font color='#70db70' size='14'>1. Radio</font>\
        <br/>You must either have a radio in your inventory or be using a vehicle radio.\
        <br/>\
        <br/><font color='#70db70' size='14'>2. ACE Self Interaction menu</font>\
        <br/>Hold your self interaction keys to see the Supporting Fires interaction point.\
        <br/>Select your target and the number and type of rounds to fire.\
        <br/>Then select the Call for Fire and Confirm it.\
        <br/>\
        <br/><font color='#70db70' size='14'>3. Targets</font>\
        <br/>The targets must be set up by the mission maker.\
        <br/>They are based on map markers the mission maker has pre-placed.\
        <br/>\
        <br/>These targets cannot be changed by the user as they represent pre-planned fire missions that they supporting unit has prepared.\
        <br/>\
        <br/>Because they are considered to be preplanned the fire mission will happen faster and the rounds will arrive sooner.\
        <br/>\
        <br/>If you do not have map, find someone who does in order to know where the target markers are.\
        <br/>\
        <br/><font color='#FF8C00'>a. Visual Location Target</font>\
        <br/>While other targets must be set up by the mission maker, the Visual Location target will fire at whatever terrain is the in centre of the users screen.\
        <br/>Note that the target coordinates will be given when the Call for Fire is confirmed, NOT when the target type is initially selected.\
        <br/>So make sure you are looking right at your target when you Confirm the Call for Fire.\
        <br/>\
        <br/>It will ignore objects, such as buildings or trees, when finding terrain.\
        <br/>Because of this when firing at a building you must aim at the base of the building.\
        <br/>Looking at the windows will cause the fire mission to land well behind the building.\
        <br/>\
        <br/>I recommend using binoculars to aim, as the crosshair in the binocular should be in the centre of your screen.\
        <br/>If you do not have binoculars, the Ace Interaction point is also in the exact centre of the screen.\
        <br/>\
        <br/>Rounds fired at a Visual Location target will take longer to arrive, as the supporting unit needs time to calculate the fire mission.\
        <br/>\
        <br/><font color='#FF8C00'>b. Grid Target</font>\
        <br/>The Grid Target is similar to the Visual Location Target in that it's entirely up to you to select the target.\
        <br/>Selecting the Grid Target will open a user interface that allows you input a target grid.\
        <br/>I recommend having your map open when you open the Grid Target UI or else you won't be able to see the map grid numbers.\
        <br/>\
        <br/>The Grid Target UI has several tooltips that will give you instructions on how to use it.\
        <br/>One you have entered your grid coordinates click Apply and then Accept to set that grid as your target.\
        <br/>Clicking the cancel button will close the UI without applying the grid coordinates.\
        <br/>\
        <br/><font color='#FF8C00'>c. Repeat Last Target</font>\
        <br/>This calls a new fire mission on the exact same target as the previous fire mission.\
        <br/>\
        <br/>It will have increased accuracy, and will arrive as quickly as if it was a pre-planned target.\
        <br/>\
        <br/>The accuracy increase represents the observer telling the artillery battery how to adjust their fire.\
        <br/>\
        <br/>The speed increase represents that the artillery doesn't have to completely recalculate their angles and re-lay their guns.\
        <br/>This is helpful if you are calling a second or third fire mission, especially on a Visual Location Target.\
        <br/>\
        <br/><font color='#70db70' size='14'>3. Adjust Fire</font>\
        <br/>When Repeat Last Target is selected an adjustment of fire can be make to bring the rounds closer to the target.\
        <br/>\
        <br/>This allows the observer to move the point of impact a small distance while keeping the same accuracy and speed increases as repeating the last target.\
        <br/>If a larger adjustment of several hundred meters is required then it is recommended to use the Visual Location target.\
        <br/>\
        <br/>Adjustments will be based on where the rounds actually landed during the previous mission.\
        <br/>Adjustments will also stack as long as an adjustent is selected again.\
        <br/>For example, if a fire mission is called, and then a repeat fire mission is called with an adjustment of 100m north, then if another repeat fire mission is called any adjustment it is given will be based on the point of impact of the second fire mission.\
        <br/>\
        <br/><font color='#70db70' size='14'>4. Ammunition Type</font>\
        <br/>Choose which type of ammo the gun battery will use for the fire mission.\
        <br/>High Explosive (HE) - Used to destroy targets.\
        <br/>Smoke - Used to provide concealment for friendly forces or to blind enemy forces.\
        <br/>Flare - Used to provide illumination in darkness.\
        <br/>\
        <br/><font color='#70db70' size='14'>5. Volume of Fire</font>\
        <br/>Choose the total number of rounds to be fired for the fire mission.\
        <br/>\
        <br/><font color='#70db70' size='14'>6. Number of Guns</font>\
        <br/>Choose the total number of guns to use for the fire mission.\
        <br/>\
        <br/><font color='#70db70' size='14'>7. The Fire Mission</font>\
        <br/>Once all of the options are selected, select Call for Fire and then Confirm.\
        <br/>\
        <br/>While a fire mission is in progress no other fire mission may be called, and the target interaction points will be temporarily removed.\
        <br/>\
        <br/>Hints will be displayed to update you on the progress of the fire mission.\
        <br/>\
        <br/>'Roger' acknowledges the fire mission and starts the battery laying the guns.\
        <br/>A warning will be given if the target is dangerously close to location of the observer.\
        <br/>Note that the battery may refuse the fire mission if target is too close.\
        <br/>\
        <br/>'Shots Out' indicates that the battery has finished laying the guns and has started firing.\
        <br/>\
        <br/>'Rounds Complete' indicates that the battery has finished firing and is available for another fire mission.\
        <br/>\
        <br/>'Splash Out' indicates that the rounds are about to hit the target.\
        <br/>\
        <br/>Once all ammunition is used up no more fire missions may be called and the interaction points will be removed.\
    "]]; \
    player createDiaryRecord ["Supporting Fires", ["What Is This?", " \
        <br/><font color='#FF8C00' size='16'>What Is This?</font> \
        <br/> \
        <br/>Supporting Fires is a mission module that allows radio operators to call in artillery or mortar fire. \
        <br/> \
        <br/>The fire will be reasonably realistic, it will arrive in barrages on or nearby the target, simulating human timing for loading and firing, and well as a human level of accuracy. \
    "]];
