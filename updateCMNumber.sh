#!/bin/bash
CM_NUMBER=$1
FILE_NAME=$2
if [[ -z ${CM_NUMBER} ]] ; then
    echo "Make sure to specify CM Number!"
else
    echo "Your Ticket Number: ${CM_NUMBER}"
fi

if [[ -z ${FILE_NAME} ]] ; then
    echo "Make sure to specify File name!"
else
    echo "Your File Name: ${FILE_NAME}"
fi
GET_NUMBER=$(cat "${FILE_NAME}" |grep -i "number"|cut -d":" -f2)
sed -i "s/${GET_NUMBER}/${CM_NUMBER}/g" "${FILE_NAME}"
