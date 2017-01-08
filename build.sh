#!/bin/bash

set -e

VERSION=2.0

docker build -t giancosta86/michelangelo:v${VERSION} .

#------------------------------------
cat << EOF > michelangelo
#!/bin/bash

set -e

mkdir -p doc

docker run -it -v \$PWD/doc:/doc -w "/doc" giancosta86/michelangelo:v${VERSION}
EOF
#------------------------------------


chmod u+x michelangelo
