import numpy as np
import cv2

from url_to_image import url_to_image

latitude = 37.530101
longitude = 38.600062
zoom = 9
url = "https://maps.googleapis.com/maps/api/staticmap?maptype=satellite&center={},{}&zoom={}&size=640x640&key=AIzaSyCK07hmdnEb-5GcCxPY_NdESy2pBFt09Ss".format(latitude,longitude,zoom)
print url
image = url_to_image(url)
cv2.imshow("Image", image)
cv2.waitKey(0)

# Google Map API key : AIzaSyCK07hmdnEb-5GcCxPY_NdESy2pBFt09Ss
