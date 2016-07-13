import numpy as np
import cv2

from url_to_image import url_to_image

latitude = 41.873355
longitude = -87.665029
zoom = 19
url = "https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center={},{}&zoom={}&size=640x640&key=AIzaSyCK07hmdnEb-5GcCxPY_NdESy2pBFt09Ss".format(latitude,longitude,zoom)
print url
kernel = np.ones((10, 10), np.float32) / 100

image = url_to_image(url)
# edited_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY) # gray scale
dst = cv2.filter2D(image, -1, kernel)
edited_image = cv2.blur(image, (10, 10)) # normalBlur
edited_image = cv2.blur(edited_image, (5, 5)) # normalBlur
edited_image = cv2.blur(edited_image, (5, 5)) # normalBlur
edited_image = cv2.bilateralFilter(edited_image, 9, 75, 75) # bilateralFilter
edited_image = cv2.cvtColor(edited_image, cv2.COLOR_BGR2GRAY) # gray scale
red,edited_image = cv2.threshold(edited_image,100.0,255,cv2.THRESH_OTSU)     #

# blur_image = cv2.blur(image, (5, 5))



cv2.imshow("Image", image)
cv2.imshow("image2", edited_image)
cv2.waitKey(0)

# Google Map API key : AIzaSyCK07hmdnEb-5GcCxPY_NdESy2pBFt09Ss