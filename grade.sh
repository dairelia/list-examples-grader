# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

if [[ -f List-Examples.java ]]
then 
    echo "ListExamples file found"
else 
    echo "no file named ListExamples.java"
fi

cp TestListExamples.java student-submission
