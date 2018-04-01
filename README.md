# E-Billboard
Video Demo: https://youtu.be/MsXc8tdRfdY

The E-Billboard is a smart & dynamic information display system. It can recognize the bystander's face and show them relevant data like their lunch menu, timetable, etc. Ideally, the whole system is meant to run on a Raspberry Pi (easy TV output) equipped with a camera module. The system can also run on a server connected to a camera and relay this data to a Raspberry Pi, i.e. a distributed network.

The face recognition (using HAAR feature-based cascade classifiers) is done using the opencv library for Python. The accuracy of recognition is dependent on the supplied dataset, it is recommended that one use multiple angles and expressions while populating the dataset.
