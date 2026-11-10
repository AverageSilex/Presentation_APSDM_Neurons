#

## Outline (Bottom-up)
### Motivation
* Why spikes ? A perspective from AD conversion and digital communications
* We can see spiking neurons as a conversion from analog (continuous time, continuous space) to digital (discrete time or discrete space)
* Summary / Outline

### Spike Response Model - Bottom up through section II to Fig 1
#### Basic
* Eq 1 with eta, epsilon and kappa
* removing epsilon
* (output as spike train)
#### Formulation as a difference
* formulation as a difference between y and yhat
* details y and yhat : one is a reconstruction/approximation of the other
* yhat can also be interpreted as a signal which tracks y, such that the difference or tracking error is always less than the threshold
	- Error and spike frequency are dependent on threshold
#### Filter building block
* Building the corresponding filter
* linear filters kappa, eta
* Threshold comparison
* Spike generation, Level signaling or transition signaling (how do you go from a digital signal to a spike train)

### Special case kappa = - eta
* While the Delta is obvious where is the Sigma ?
* To demonstrate the simalirity with APSDM suppose that kappa = - eta = g
* Then this part can be moved after the difference
* Canonical form of Delta Sigma modulation
* To come back to the general case define g_sigma and g_delta as filters

### What about the demodulation
* Demodulation is done via a low pass filter on the receiving side
* This can be done by accumulating input spike with a leaky membrane potential

### Conclusion
* Putting everything together
* Pipeline Continuous -> Discrete -> Continuous
* Summary of the previous sections
#### Perspectives
* This APSDM is a simple case (unipolar, one threshold) but it can be extended (e.g. bipolar send-on-delta)
* How biologically plausible is all of that ?
	* Neuronal Spike Generation Mechanism as an Oversampling, Noise-shaping A-to-D Converter - Chklovskii & Soudry
* What does it mean for processing with neurons ? How do we relate this with numerical solvers ?
* How can we exploit this structure to produce neuromorphic HW ?

## References
* LIF and Simplified SRM Neurons Encode Signals Into Spikes via a Form of Asynchronous Pulse Sigma–Delta Modulation - Young C. Yoon
* Asynchronous Delta Sigma Modulation - Kikkert & Miller
* Delta modulation - H. R. Schindler
* Spiking Neuron Models - Gerstner & Kistler
* Neuronal Spike Generation Mechanism as an Oversampling, Noise-shaping A-to-D Converter - Chklovskii & Soudry

##
* such as time-varying pixel intensities, are encoded using asynchronous delta modulation (DM) (or level-crossing sampling) with positive and negative valued events and (nondecaying) step functions

* Motivation : "Our high-level motivation is to understand the design principles underlying how the various spiking neuron models in the SNNs encode continuous-time signals into spikes". Part of the challenge of discerning such principles lies with how the majority of spiking neuron models are defined in terms of differential equations and possibly a spike-and-reset mechanism. Such formulations do not readily reveal the intermediate processing steps or principles involved with transforming an input signal into spikes.

* Though outside the scope of this paper, there also exist related asynchronous encoder designs using bipolar (biphasic) signaling with positive and negative spikes. These shall be mentioned in Sec. VI.

