%% corneaRayTrace

% Plot a set of rays of different initial thetas on the default model eye
sceneGeometry = createSceneGeometry();

% Minimize clutter in the figure
clear figureFlag
figureFlag.legend = false;
figureFlag.imageLines = false;
figureFlag.textLabels = false;
outputRay = rayTraceCenteredSphericalSurfaces([sceneGeometry.eye.pupilCenter(1) 2], deg2rad(46), sceneGeometry.opticalSystem, figureFlag);

% Adjust the the figure flag so that we re-plot on the initial figure
figureFlag.surfaces = false;
figureFlag.imageLines = false;
figureFlag.refLine = false;
figureFlag.rayLines = true;
figureFlag.finalUnitRay = true;
figureFlag.textLabels = false;
figureFlag.legend = false;
figureFlag.new = false;
for deg = 31:-15:-44
    outputRay = rayTraceCenteredSphericalSurfaces([sceneGeometry.eye.pupilCenter(1) 2], deg2rad(deg), sceneGeometry.opticalSystem, figureFlag);
    drawnow
end
