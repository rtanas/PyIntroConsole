#EXAMPLE 1: "3d Barcharts"
# ----------

#source:
#https://pythonprogramming.net/3d-bar-charts-python-matplotlib/?completed=/3d-scatter-plot-customizing/
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax1 = fig.add_subplot(111, projection='3d')

xpos = [1,2,3,4,5,6,7,8,9,10]
ypos = [2,3,4,5,1,6,2,1,7,2]
num_elements = len(xpos)
zpos = [0,0,0,0,0,0,0,0,0,0]
dx = np.ones(10)
dy = np.ones(10)
dz = [1,2,3,4,5,6,7,8,9,10]

ax1.bar3d(xpos, ypos, zpos, dx, dy, dz, color='#00ceaa')
plt.show()


#EXAMPLE 2:  "3d Barcharts"
# ----------
#source:
#https://community.plotly.com/t/animate-rotating-orthographic-map-in-python-plotly/28812/6
import plotly.graph_objs as go
import numpy as np

data=[go.Scattergeo(
  lat=[45.5017, 51.509865, 52.520008],
  lon=[-73.5673, -0.118092, 13.404954 ],
  mode='markers',
  marker_color='red')]

layout =go.Layout(width=500, height=500,
                  title_text='I own the world',
                  title_x=0.5,
                  geo=go.layout.Geo(
                    projection_type='orthographic',
                    center_lon=-180,
                    center_lat=0,
                    projection_rotation_lon=-180,
                    showland=True,
                    showcountries=True,
                    landcolor='rgb(243, 243, 243)',
                    countrycolor='rgb(204, 204, 204)'
                  ))


lon_range = np.arange(-180, 180, 2)

frames = [go.Frame(layout=go.Layout(geo_center_lon=lon,
                                    geo_projection_rotation_lon =lon
),
name =f'fr{k+1}') for k, lon in enumerate(lon_range)]


sliders = [dict(steps = [dict(method= 'animate',
                              args= [[f'fr{k+1}'],                           
                                     dict(mode= 'immediate',
                                          frame= dict(duration=10, redraw= True),
                                          transition=dict(duration= 0))],
                              label=f'fr{k+1}'
) for k in range(len(lon_range))], 

transition= dict(duration= 0 ),
x=0, # slider starting position  
y=0,   
len=1.0) #slider length
]



fig = go.Figure(data=data, layout=layout, frames=frames)
fig.update_layout(sliders=sliders)
fig.show()


#EXAMPLE 3:  "Polar Plot"
# ----------
# Source: 
# https://www.dropbox.com/sh/okks00k2xufw9l3/AAAV4la__hMHOefIOloNS7lxa/Public%20Folder/Matplotlib?dl=0&preview=tutorial023_polar.py
import numpy as np

import matplotlib.pyplot as plt
import matplotlib as mpl

mpl.style.use('default')

# Parameters
n = 2001
f = np.pi
r = 5.0

# Data
theta = np.linspace(0, 20.0*np.pi, n)
curve1 = r*np.cos(f*theta)
curve2 = r*np.sin(f*theta)

# Get an axes handle/object
ax1 = plt.subplot(111, polar=True)

# Plot the figure
ax1.plot(theta, curve1, color='xkcd:salmon', label='rose curve1')
ax1.plot(theta, curve2, color='xkcd:azure', label='rose curve2')

## Main tweaks
# Radius limits
ax1.set_ylim(-6, 6)
# Radius ticks
ax1.set_yticks(np.linspace(-6, 6, 7))
# Radius tick position in degrees
ax1.set_rlabel_position(135)
# Angle ticks
ax1.set_xticks(np.linspace(0, 2.0*np.pi, 17)[:-1])

# Additional Tweaks
plt.grid(True)
plt.legend()
plt.title("Rose Plots")

plt.show()
