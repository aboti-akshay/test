d='shellscript'
mkdir $d
cd $d
touch file1.txt file2.txt file3.txt

for i in 1 2 3; do
    echo "$i" >> file1.txt
done

for i in 1 2 3 4 5 6 7 8 9 10; do
    echo "$i" >> file2.txt
done

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15; do
    echo "$i" >> file3.txt
done



cat file1.txt file2.txt file3.txt

chmod a=r file2.txt

chmod g=r file3.txt


cat file2.txt file3.txt >> file1.txt

echo "do you want to delete file 2nd and 3rd"
read choice;

echo $choice;

if [ $choice == "yes" ] 
then

rm file2.txt file3.txt
cat file1.txt

else

echo "Congratulation"
fi

