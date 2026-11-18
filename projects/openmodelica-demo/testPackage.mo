package testPackage
  model testModel
    Modelica.Blocks.Sources.Step step(offset = 0, height = 5, startTime = 3)  annotation(
      Placement(transformation(origin = {-48, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 20)  annotation(
      Placement(transformation(origin = {-80, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
      Placement(transformation(origin = {9, -19}, extent = {{-23, -23}, {23, 23}})));
  equation
  connect(step.y, add.u1) annotation(
      Line(points = {{-37, -4}, {-35, -4}, {-35, -5}, {-19, -5}}, color = {0, 0, 127}));
  connect(const.y, add.u2) annotation(
      Line(points = {{-68, -34}, {-44, -34}, {-44, -32}, {-18, -32}}, color = {0, 0, 127}));
  end testModel;
  annotation(
    uses(Modelica(version = "4.1.0")));
end testPackage;