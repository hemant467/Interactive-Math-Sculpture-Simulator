# Interactive Math Sculpture Simulator 🕹️
꧁ᬊᬁReal-time 3D interactive math sculpture with morphing shapes &amp; dynamic visuals.ᬊ᭄꧂

# Overview 📜 :

The Interactive Math Sculpture Simulator is a real-time 3D parametric visualization tool designed in MATLAB. It enables users to explore dynamic, morphing mathematical surfaces with fully interactive controls. The simulator combines advanced parametric modeling, animated color mapping, and sophisticated lighting to create a visually stunning, interactive experience.

This project demonstrates the intersection of mathematics, computer graphics, and user interaction in a single, accessible MATLAB environment.

# Features ✨ :

- **Parametric 3D Surfaces:** Twisted torus-like structures generated using sinusoidal functions.
- **Dynamic Morphing:** Surfaces evolve over time with amplitude and frequency-based deformations.
- **Interactive Controls:** Sliders allow real-time manipulation of twist and vertical scaling.
- **Advanced Visualization:**
  - Smooth shading (shading interp)
  - Dynamic color mapping
  - Gouraud lighting and camera-attached light source
- **Animated Title:** Real-time shimmering gold text for an engaging visual effect.
- **Fully Commented Code:** Accessible for beginners and non-technical users.

# Installation 🛠️ :
1. Requirements :
  - MATLAB R2020a or later
  - No additional toolboxes required

2. Clone the repository 📋 :
```bash
git clone https://github.com/hemant467/Interactive-Math-Sculpture-Simulator.git
```

3. Run the simulator 🛠️ :
  - Open **MathSculptureSimulator.m** in MATLAB and execute
```bash
run MathSculptureSimulator.m
```

# Usage 📈 :

- **Twist Amount Slider:** Adjusts horizontal twisting of the sculpture.
- **Vertical Scale Slider:** Adjusts the height scaling of the sculpture.
- **Mouse Controls:** Click-and-drag to rotate the 3D view.
- **Dynamic Colors:** Surface colors update continuously to create flowing visual effects.
- **Shimmering Title:** Title color oscillates to create a gold shimmer effect.

# How It Works 🧠 :

1. Parametric Surface Generation :
  - Uses meshgrid to create a 2D grid for angular parameters.
  - X, Y, Z coordinates calculated using trigonometric and sinusoidal functions.

2. Animation Loop :
  - Continuously updates surface coordinates and color data.
  - Reads slider values in real-time to adjust sculpture deformation.

3. Visualization Enhancements :
  - surf function for surface plotting
  - shading interp for smooth coloring
  - camlight headlight and lighting gouraud for realistic 3D lighting

# Potential Enhancements 🚀 :
  - Audio-reactive morphing to visualize sound in 3D.
  - Multi-shape blending with slider-controlled transitions.
  - Export animation to video or GIF formats.
  - Adjustable lighting and camera path automation.

<img src="https://readme-typing-svg.herokuapp.com/?lines=Interactive+Math+Sculpture+Simulator+🕹️&font=Fira%20Code&color=%23FFD700&center=true&width=600&height=60">
