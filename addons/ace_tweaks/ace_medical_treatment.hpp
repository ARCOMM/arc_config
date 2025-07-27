class ace_medical_treatment {
    class Medication {
        class PainKillers {
            // changes made to simulate something like combo acetaminophen/codeine pill rather than some stronger but short lived opiate
            // gives it more of a gameplay position compared to the much stronger but riskier morphine
            hrIncreaseHigh[] = {0, 0};   //changed from {-5, -17}
            hrIncreaseLow[] = {0, 0};    //changed from {-5, -10}
            hrIncreaseNormal[] = {0, 0}; //changed from {-5, -15}
            maxDose = 25;                //changed from 5
            painReduce = 0.1;            //changed from 0.35, 0.1 may still high; morphine is 0.8
            timeInSystem = 1200;         //changed from 420
        };
    };
};
