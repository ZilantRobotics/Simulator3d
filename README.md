# Zilant Robotics Aerial Robots Simulator

![](docs/screen.jpg)

## Introduction

Our mission is to create a digital environment that replicates the world as closely as a robot or UAV would perceive it, with all interactions being facilitated through the same API formats these robots would use in reality. This ensures developers, researchers, and UAV enthusiasts can work on robotic solutions that are not only innovative but also grounded in real-world practicalities.

At its core, the Zilant 3D Simulator is an integral part of our open-source initiative focused on advancing the software, debugging tools, and testing systems for unmanned aerial vehicles (UAVs) and onboard equipment using the [OpenCyphal](https://opencyphal.org/) real-time intravehicular distributed computing and communication. Designed with flexibility in mind, it promises adaptability across various UAV applications such as aerial delivery, inspections, cartography, and aerotaxis.

Our emphasis on Hardware In The Loop (HITL) simulation, facilitated through the Cyphal bus simulation modules (maintained in separate repositories), means that the Zilant Simulator doesn't just stop at software. It actively bridges the gap between the digital and the tangible, allowing for a comprehensive testing and development environment. 

## Capabilities
- Simulation of technical vision system sensors, such as modeling of cameras, lidars, and segmentation cameras.
- Various drone models, including copters and VTOL-planes. This encompasses models of UAV quadcopters with cargo, quadcopters with a vision system, drone ports for logistics and inspection, and several VTOL-plane models.
- Interaction with ROS.
- API for executing automated testing scenarios.
- Innopolis city 3D model.

## ROS Interface

Our simulator provides a seamless integration with the Robot Operating System (ROS) through the use of Rosbridge. This interface enables users to control UAVs, send actuator commands, and receive simulated sensor data using familiar ROS topics.

For a detailed breakdown of the ROS topics and a comprehensive guide on how to interface with our simulator using ROS, please refer to [ROS interface documentation](docs/ros.md).


## API for Automated Testing Scenarios

Our collection of APIs has been meticulously developed to cater to the needs of automated testing scenarios. The suite enables users to orchestrate tasks ranging from agent instantiation and scene transitions to intricate sensor and environmental manipulations. Essential functionalities such as collision detection, geolocation data handling, and failure simulation are also well-integrated. For an exhaustive exploration of each API's capabilities and detailed specifications, please refer to [detailed API documentation](docs/api.md).

## System Requirements

For the best experience with the Zilant Robotics Aerial Robots Simulator, ensure your tech meets these criteria:

- **Graphics Card:** Equip yourself with a GeForce RTX 2060 or better equivalent. Note that most integrated graphics won't be sufficient, but Apple M1 or later versions are an exception.

- **Operating System:** We've tailored the simulator for modern versions of Windows, Linux, and Mac. Choose the build that matches your OS.

- **CPU:** Aim for an Intel i7 from the 11th or 12th generation. For those using AMD, any equivalent processor will suffice.

- **RAM:** 16GB is a recommended minimum, but more is always better for performance.

Do a quick check against these specs before diving into our simulator. Happy flying!

### Releases:

We are committed to building and publishing releases for Windows, Linux, and Mac. Always refer to our [releases page](https://github.com/ZilantRobotics/simulator3d/releases) for the latest version tailored to your platform.

## Getting Started
To get started with the Zilant Robotics Aerial Robots Simulator, please refer to the official documentation and installation guidelines.

### Binary files

1. Download binary of the simulator from [releases](https://github.com/ZilantRobotics/simulator3d/releases).

## Contribute
We welcome contributions from the community. If you're interested in improving the Zilant robotics Simulator or adding new features, please refer to our contribution guidelines and code of conduct.

Thank you for being a part of the Zilant Robotics community!

## License
This project is licensed under the `CC BY-NC-SA` License. For more information, please see the `LICENSE` file in the repository.

## Acknowledgements

This project has been supported by funds from The Foundation for Assistance to Small Innovative Enterprises (FASIE). Moreover, we are honored to be distinguished as laureates of the "Digital Technologies Code" competition, under the federal project "Digital Technologies". We express our profound gratitude for their invaluable support and endorsement.
