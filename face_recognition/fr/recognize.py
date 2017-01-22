import cv2, numpy, os, time
#load data
data = 'data'
(images, labels, names, id) = ([], [], {}, 0)
for (subdirs, dirs, files) in os.walk(data):
    for subdir in dirs:
        names[id] = subdir
        subjectpath = os.path.join(data, subdir)
        for filename in os.listdir(subjectpath):
            path = subjectpath + '/' + filename
            label = id
            images.append(cv2.imread(path, 0))
            labels.append(int(label))
        id += 1
(images, labels) = [numpy.array(lis) for lis in [images, labels]]
#create & train FFR model
model = cv2.createFisherFaceRecognizer()
model.train(images, labels)
cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
#recognition function
def recognize(webcam):
    (_, img) = webcam.read()
    grayscale = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    detections = cascade.detectMultiScale(grayscale, 1.3, 5)
    for (x,y,w,h) in detections:
        face = grayscale[y:y + h, x:x + w]
        resized = cv2.resize(face, (130, 100))
        prediction = model.predict(resized)
        if prediction[1]<400:
            return names[prediction[0]]
#print to ../input.txt
while True:
    myfile = open("../input.txt","w")
    myfile.write("blah")
    myfile.close()
    webcam = cv2.VideoCapture(0)
    while True:
        val = recognize(webcam)
        if val:
            myfile = open("../input.txt","w")
            myfile.write(val)
            myfile.close()
            break
    webcam.release()
    time.sleep(10)
