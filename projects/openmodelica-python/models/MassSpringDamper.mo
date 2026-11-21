model MassSpringDamper
  Modelica.Mechanics.Translational.Components.Fixed Fixed annotation(
    Placement(transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Spring Spring(c = 1000)  annotation(
    Placement(transformation(origin = {-30, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Damper Damper(d = 20)  annotation(
    Placement(transformation(origin = {-30, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Mass Mass(m = 10, s(start = 0.1, fixed = true), v(start = 0, fixed = true))  annotation(
    Placement(transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Fixed.flange, Spring.flange_a) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, 20}}, color = {0, 127, 0}));
  connect(Fixed.flange, Damper.flange_a) annotation(
    Line(points = {{-80, 0}, {-40, 0}, {-40, -20}}, color = {0, 127, 0}));
  connect(Spring.flange_b, Mass.flange_a) annotation(
    Line(points = {{-20, 20}, {20, 20}, {20, 0}}, color = {0, 127, 0}));
  connect(Damper.flange_b, Mass.flange_a) annotation(
    Line(points = {{-20, -20}, {20, -20}, {20, 0}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.1.0")));
end MassSpringDamper;