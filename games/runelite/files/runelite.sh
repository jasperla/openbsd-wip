#!/bin/sh

JAVA_CMD=$(javaPathHelper -c runelite)

exec ${JAVA_CMD} -jar ${TRUEPREFIX}/share/java/classes/runelite.jar "$@"
