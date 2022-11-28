# Create your grading script here
CPATH = "-cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
set -e

rm -rf student-submission
git clone $1 student-submission

cd student-submission # go into student-sub to look for listexamples

if [[ -f ListExamples.java ]]
then 
    echo "ListExamples file found"
else 
    echo "no file named ListExamples.java"
    exit
fi

cd .. # go back to copy testlistexamples into studentsubmission

cp TestListExamples.java student-submission
cp -R lib/ student-submission

# checking if lib is in student-sub
cd student-submission
#...

set +e

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java 2> error.txt
if [[ $? -eq 0 ]]
then
	echo "success"
else
	cat error.txt
	exit 1
fi


