Jellyfish Hose
==============

What should be done to popularize seawater desalination equipment at a
low price? This project is my conclusion. I was inspired by the venous
valves in the veins of the lower limb of humans, which are oriented in
the opposite direction to the siphon. However, this project is
incomplete. I need your cooperation.

Plan 1
------

-  The power source is wave power only
-  Take in seawater from the water intake and prevent backflow with a
   structure similar to a duckbill valve
-  A hose is used to transport seawater to a reservoir installed at a
   high position, and its potential energy increases the water pressure.
-  Pass through reverse osmosis membrane

.. mermaid::

   flowchart BT
       ocean((Ocean)) --> checkvalve1[Check Valve]
       ocean --> checkvalve2[Check Valve]
       ocean --> checkvalve3[Check Valve]
       checkvalve1 --> tank[(Tank)]
       checkvalve2 --> tank
       checkvalve3 --> tank

.. mermaid::

   flowchart TB
       tank[(Tank)] --> |potential_energy| reverse_osmosis[Reverse Osmosis Membrane]
       reverse_osmosis --> freshwater[\Freshwater/]

Plan 2
------

-  Intake same as above plan
-  Passing through a reverse osmosis membrane only with water pressure
   from wave power and marine propulsion.
-  Storing fresh water in floating water bags
-  Continue to tow the water bag and carry it to your destination

.. mermaid::

   flowchart LR
       ocean((Ocean)) --> |Marine Propulsion| checkvalve[Check Valve with Reverse Osmosis Membrane]
       checkvalve --> tank(((Water Bag)))

Intake structure
----------------

-  The water intake is named jellyfish, and the valve part is named
   asterisk.
-  Output this with a 3D printer and use silicone rubber as the
   material.
-  The water intake has several holes for tying several anchors with
   ropes.
-  There is an asterisk-shaped valve at the tip of the water intake, and
   it connects with a commercially available hose.

ToDo
====

I am looking for CAD design volunteers and funders. What I want to
complete now is the CAD data of the water intake. It is under
construction with `FreeCAD <https://www.freecadweb.org/index.php>`__,
`Antimony <https://github.com/mkeeter/antimony>`__ and `OpenSCAD
<https://openscad.org/>`__.  Among them, FreeCAD data is poor quality.
If you have a 3D printer, please test the performance of the water
intake and publish the recorded video on YouTube. Please submit a pull
request to fix the data.
