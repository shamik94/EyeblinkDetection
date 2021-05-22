# EyeblinkDetection
Uses Digital signal processing to detect Voluntary Eyeblinks using EEG data

# Abstract: 
Efficient algorithm for detecting the occurrence of eye blinks is  developed and its performance is investigated. Using this algorithm, the required eye blinks can be detected successfully with high accuracy.

# Introduction
It is found that EEG signal obtained from voluntary eye blink condition produces clearer signals with larger amplitude than that obtained from eye movements.The eye blinking activity is detected from EEG(electroencephalogram) signal via a brain computer Interface(BCI).We analyzed EEG signals obtained from various conditions to identify a suitable eye activity that can be further used to for various purposes. Once the eye activity is found, an algorithm is developed to examine its performance in detecting the occurrence of this activity.

# Eye Blink Artifacts in EEG Signal
Eye blinks can be classified into three types: reflexive, voluntary and spontaneous.
In comparison to others, voluntary eye blinking  involves multiple areas of the cerebral cortex as well as basal ganglion, brain stem and cerebella structures. The EEG signals obtained from the eye activities are compared with that obtained when the subject was in relax condition. This is done to identify the best eye activity that can produce clear signal with high amplitude. The effect of various eye blinks and duration of blink on the EEG signals are also studied.

#Methodology
 The EEG signal is sampled using a sampling frequency of 50Hz. The signal is then filtered using a low pass filter with a cut off frequency of 5 Hz to remove high frequency signal.Among all the conditions mentioned above, the voluntary eye blink produced high amplitude EEG signals. A threshold value of ±5 V was used to preserve the peak amplitude and remove the lower amplitude of EEG signals.
 
![image1](https://user-images.githubusercontent.com/8223631/119239537-65ddea80-bb67-11eb-8720-b21f255c461e.png)
 
 Figure shows the process of filtering, removing low amplitude signal and detecting the eye blinks from EEG signals.The eye blinking information is extracted using an algorithm written in MATLAB. This algorithm detects three adjacent local maxima and minima within a specific amplitude and range that can differentiate between spontaneous eye blink.


![image2](https://user-images.githubusercontent.com/8223631/119239562-89a13080-bb67-11eb-9efc-2e2b6fa60eeb.png)

The amplitude of spontaneous eye blink is in the range of -4 V to 3 V and its duration is less than 400 ms. This EEG signal comprises eye blinking waveforms (below 5 Hz) that have larger amplitude and longer duration (400-500 ms) compared to that obtained from spontaneous eye blink.It is also found that three continuous eye blinks (with a duration of 1.5 to 2.5 seconds between eye closure and opening) are suitable enough to detect eye blink.


![image3](https://user-images.githubusercontent.com/8223631/119239594-c0774680-bb67-11eb-9686-d5cd57053114.png)

![Screen Shot 2021-05-23 at 1 39 32 AM](https://user-images.githubusercontent.com/8223631/119239605-d553da00-bb67-11eb-966d-a75abe76ffcf.png)

The eye-blink is successfully detected and there is a change in the pulse.


# Conclusion

The EEG signals obtained from voluntary eye blink produced clear signals which could be easily detected. The simulation results showed that eye blinks can be detected successfully from the EEG signals using the proposed algorithm with the success percentage of approximately 85%. Good detection results could not be obtained from some of the records. This is due to noises generated from improper electrode placements and low amplitude of EEG signals when the subject's eyes were not fully blinked.

# Applications

With proper filtering and accurate detection, the eye blinks could be used for multiple purposes like controlling various systems eg: activating home lighting system.
Can be used by disabled people to control switches.
