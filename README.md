# predictor-1
Predictor of sub-group 1
### Feed-forward Neural network
Configuration: hidden: [36 24] output: 2 (in the format [0 1]) with scaled conjugate gradient.
<div>
<img src="/images/image_training.png" width="400px"</img> 
</div>
<div>
<img src="/images/error.png" width="400px"</img> 
</div>

### F1-score
The F1-score is given by:
<div>
<img src="/images/f1.png" width="300px"</img> 
</div>
The Confusion Matrix of the testing dataset for the FFNN trained was:
<div>
<img src="/images/matrix.png" width="300px"</img> 
</div>
Where
<div>
<img src="/images/info_matrix.jpg" width="300px"</img> 
</div>
So, the F1-score was:
F1 = 2*686/(2*686+67+52) = 92%
