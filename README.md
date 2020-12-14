Documentation
=============
**General Description:**

This project mainly focuses on path planning in dynamic environment using Reinforcement Learning programmed with MATLAB. 

Dependencies
-------------
**Language:**  MATLAB

Project Architecture
-------------
```buildoutcfg
    A_star.m        // A* search
    cal_Crowd.m     // calculate crowd info for each intersection
    cal_Flow.m      // calculate outflow of each road
    cal_Reward.m    // calculate reward for Q-Learning
    cal_Transfer.m  // calculate state transition
    coordinate.xlsx // coordinates of intersections
    crowd_init.xlsx // inital crowds of different intersections
    distance.xlsx   // distance between different intersections
    flow_init.xlsx  // inital road flows
    flow_to_crowd.m // tranfer from flow to crowd
    grid_map.m      // form adjacency matrix
    init_Q.m        // initialize Q-value matrix
    Planning.m      // path planning function
    qlearning.m     // Q-Learning module
    README.md       // help
    Document.pdf    // technical documentation of this project
    sig.m           // sigmoid function
    T_init.xlsx     // inital transition matrix
    Update_M.m      // update crowd, flow, reward, and transition matrices
    visualization.m // visualization of this project
    width.xlsx      // widths of different raods
```