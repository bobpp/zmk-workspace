set -eux
for i in zmk-keyboard-torabo-tsuki-lp; do
    if [ ! -e config/$i ]; then
        git clone git@github.com:bobpp/$i.git config/$i
    fi
    just init config/$i
done
