Hand-Written-Digit-Recognition-V1
=================================

Recognizes Hand-Written Single Digit 20X20px image using Logistic Regression.


Developer:

copyright © 2013 Dhruv Kohli,
                 B.Tech Mathematics and Computing,
                 Indian Institute Of Technology, Guwahati.

Requirements:

    1.GNU Octave or MatLab installed on your computer.( I haven't tried it on MatLab )
    2.Files to be included in the same folder are as follows :
        -hdr_lr.m
        -displayData.m
        -fmincg.m
        -lrCostFunction.m
        -lrOneVsAll.m
        -predictOneVsAll.m
        -sigmoid.m
        -trainData.mat

ALGORITHMS USED:

    Basically Learning Algorithms are used to train data and come up with a hypothesis which 
    predicts the testcase provided by you.
    -Algorithms :
     -Logistic Regression OneVSAll
     -Gradient Descent
     -fmincg ( an optimization function )
     -sigmoid ( hypothesis function )

Process:

    1.Draw a 20X20px image in paint ( or else ) with BLACK background and a SINGLE digit
      written on it with WHITE font.
    2.The DIGIT should fairly be away from margins i.e. near CENTRE.
    3.Draw DIGIT using Pencil of WHITE COLOR with somewhat UNIFORM thickness.
    4.Save image in the folder containing above mentioned files.
    5.Launch Octave and change the current directory to the folder containing above files.
    6.WRITE COMMAND : 
                 
                    image = imread("image_name.png");  PRESS ENTER
                    hdr_lr(image); PRESS ENTER 
                    
    7.Now wait for the system to predict the digit. ( It ll hardly take a minute ).
    
Some Notes:

    -By Default, the maximum number of iterations is 50 as can be seen in lrOneVsAll.m. 
    -But you can increase the iterations to increase accuracy.
    -However on increasing it further after a saturation point, the Gradient Descent Algorithm 
     will overfit the given trainData which will decrease the Accuracy to predict correct Digit.
    -I have included some, breakpints to give some insight of whats going behind the scene.
    -If you are interested to know more, Visit Wikipedia or Google websites that can help 
     you learn.
    
Final Note:

    -If you find some descrepancy in the code or are facing problems in the Implementation,
    mail me with Subject : HDRV1
    
Contact:

Email : dhruv.kohli@iitg.ernet.in, dhruvkohli99@gmail.com

Happy Coding!

=======
                    
