# Kinematic Inversion with Obstacle Avoidance

This repository contains MATLAB/Simulink simulations for implementing second-order algorithms for kinematic inversion with Jacobian inverse(part 1) and Jacobian pseudo-inverse(part 2), along with obstacle avoidance in operational space.

## Overview

The simulation project consists of two parts, each addressing different aspects of kinematic inversion and obstacle avoidance.

### Part 1: Kinematic Inversion with Jacobian Inverse

Implement a second-order algorithm for kinematic inversion with Jacobian inverse along a given trajectory using Euler integration with a time step of 1 ms.

### Part 2: Kinematic Inversion with Jacobian Pseudo-Inverse and Obstacle Avoidance

Relax one component (z-component) in the operational space and implement a second-order algorithm for kinematic inversion with Jacobian pseudo-inverse along the given trajectory. Additionally, maximize the distance from an obstacle, which is a sphere centered at p = [0.4, -0.7, 0.5]^T with a radius of 0.2 m.

## Files

1. **Part1**: MATLAB script for implementing kinematic inversion with Jacobian inverse.
2. **Part2**: MATLAB script for implementing kinematic inversion with Jacobian pseudo-inverse and obstacle avoidance.

## Usage

1. Clone the repository to your local machine.
2. Open MATLAB and navigate to the repository directory.
3. Run the `init.m` file in either `Part1` or `Part2` folder depending on what you're trying to implement.
   The `init.m` script loads a pre-defined kinematic trajectory and simulates closed-loop inverse kinematics (CLIK) using the trajectory data. It then visualizes the trajectory tracking of a SCARA robot in a virtual reality environment and displays operational space errors and joint values graph upon completion of the visualization. The script provides an integrated approach to analyze and visualize the kinematic trajectory tracking process in a concise and interactive manner. 
   
## Visualization

### Implementation of Kinematic Inversion with Jacobian pseduo inverse kinematics on SCARA manipulator
https://github.com/Amenephous/Kinematic-Inversion_SCARA/assets/48127920/32651b8e-ac17-4175-81c5-028904db8996

### Errors and Joint positions for part 1, that is Kinematic Inversion with Jacobian inverse kinematics on SCARA manipulator


### Errors and Joint positions for part 1, that is Kinematic Inversion with Jacobian pseduo inverse kinematics with obstacle avoidance on SCARA manipulator



## Dependencies

The simulations require MATLAB and Simulink.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

