# get_models.ps1

Write-Output "Downloading model files..."

# deeplab model
$DEEPLAB_URL = "https://www.dropbox.com/s/1a2hyzuiol6g1w1/frozen_inference_graph-110871.pb?dl=1"
$DEEPLAB_FOLDER = "deeplab"
$DEEPLAB_MODEL = "frozen_inference_graph-110871.pb"

# openpose body_25 model
$BODY_25_URL = "https://www.dropbox.com/sh/pfrrd0znex1nerz/AABVEnY0ptgrc9iGmjQjBjRDa/pose_iter_584000.caffemodel?dl=1"
$BODY_25_FOLDER = "mpii_openpose_body25"
$BODY_25_MODEL = "pose_iter_584000.caffemodel"

# Create directories if they don't exist
if (!(Test-Path -Path $DEEPLAB_FOLDER)) {
    New-Item -ItemType Directory -Path $DEEPLAB_FOLDER
}

if (!(Test-Path -Path $BODY_25_FOLDER)) {
    New-Item -ItemType Directory -Path $BODY_25_FOLDER
}

# Download the files
Invoke-WebRequest -Uri $DEEPLAB_URL -OutFile "$DEEPLAB_FOLDER\$DEEPLAB_MODEL"
Invoke-WebRequest -Uri $BODY_25_URL -OutFile "$BODY_25_FOLDER\$BODY_25_MODEL"

Write-Output "Model files downloaded."
