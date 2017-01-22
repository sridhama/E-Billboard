import os, sys, numpy, cv2
path = os.path.join("data", sys.argv[1])
if not os.path.isdir(path):
    os.mkdir(path)
cascade = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
webcam = cv2.VideoCapture(0)
count = 0
while count < 40:
    (_, img) = webcam.read()
    grayscale = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    detections = cascade.detectMultiScale(grayscale, 1.3, 4)
    if type(detections) is tuple:
        continue
    else:
        for (x,y,w,h) in detections:
            cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),3)
            face = grayscale[y:y + h, x:x + w]
            resized = cv2.resize(face, (130, 100))
            cv2.imwrite('%s/%s.png'%(path,count), resized)
            count +=1
    cv2.imshow('Capture', img)
    if cv2.waitKey(1) == 13:
        break
webcam.release()
cv2.destroyAllWindows()
