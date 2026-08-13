# build
GOOS="linux" GOARCH=amd64 go build .

# deploy, add --args=
gcloud beta run deploy sleep-service --source . --no-build --base-image=osonly24 --command=./sleep-service --project $GOOGLE_CLOUD_PROJECT --region $GOOGLE_CLOUD_LOCATION --allow-unauthenticated --timeout=1200
