require './CStack.rb'
require './Draw.rb'
require './Matrix.rb'
require './MatrixUtils.rb'
require './Utils.rb'
require './Screen.rb'

include Math

##TAU!!!!
$TAU = PI*2

# Changeable
$RESOLUTION = 500 # All images are squares
$DEBUGGING = false
$BACKGROUND_COLOR = [255, 255, 235] # [r, g, b]
$DRAW_COLOR = [0, 0, 0] # for 2D drawing
$INFILE = "script"
$OUTFILE = "image.ppm"
$TEMPFILE = "temmmmp.ppm" # Used as temp storage for displaying
$STEP = 100 # Number of iterations needed to to finish a parametric
$AMBIENT_LIGHT = [50, 50, 50]
$POINT_LIGHT = [[0.5, 0.75, 1],
                [0, 255, 255]]
$VIEW = [0, 0, 1]

# Static
$SCREEN = Screen.new($RESOLUTION)
$COORDSYS = CStack.new()
$RC = $DRAW_COLOR[0]; $GC = $DRAW_COLOR[1]; $BC = $DRAW_COLOR[2]
$Ka = [0.1, 0.1, 0.1] #Constant of ambient
$Kd = [0.5, 0.5, 0.5] #Constant of diffuse
$Ks = [0.5, 0.5, 0.5] #Constant of specular


##=================== MAIN ==========================
### Take in script file

if ARGV[0]
  $INFILE = ARGV[0]
end

Utils.parse_file()
