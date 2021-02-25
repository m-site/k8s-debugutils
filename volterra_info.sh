#!/bin/sh

IFILE=/var/www/html/index.html
echo "<html><body>" > ${IFILE}
echo "HOSTNAME : ${HOSTNAME}<br>" >> ${IFILE}
echo "SITENAME : ${VES_IO_SITENAME}<br>" >> ${IFILE}
echo "SITETYPE : ${VES_IO_SITETYPE}<br>" >> ${IFILE}
echo "HW_VENDOR : ${HW_VENDOR}<br>" >> ${IFILE}
echo "HW_MODEL : ${HW_MODEL}<br>" >> ${IFILE}
echo "PROVIDER : ${PROVIDER}<br>" >> ${IFILE}
echo "</body></html>" >> ${IFILE}

