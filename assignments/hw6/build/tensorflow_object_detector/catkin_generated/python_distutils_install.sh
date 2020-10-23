#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pengbo/ROS/assignments/hw6/src/tensorflow_object_detector"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pengbo/ROS/assignments/hw6/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pengbo/ROS/assignments/hw6/install/lib/python3/dist-packages:/home/pengbo/ROS/assignments/hw6/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pengbo/ROS/assignments/hw6/build" \
    "/home/pengbo/anaconda3/bin/python3" \
    "/home/pengbo/ROS/assignments/hw6/src/tensorflow_object_detector/setup.py" \
     \
    build --build-base "/home/pengbo/ROS/assignments/hw6/build/tensorflow_object_detector" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pengbo/ROS/assignments/hw6/install" --install-scripts="/home/pengbo/ROS/assignments/hw6/install/bin"
