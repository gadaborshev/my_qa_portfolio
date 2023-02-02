#### 1. Сделать папку dir_1

	> mkdir dir_1

#### 2. Зайти в папку dir_1

	> cd dir_1

#### 3. Создать папку inner_dir_1
			
	> mkdir inner_dir_1

#### 4. Посмотреть где ты находишься

	> pwd
			
#### 5. Находясь в папке dir_1 создать пустой текстовый файл tf_1.txt

	> touch tf_1.txt

#### 6. Находясь в папке dir_1 через команду cat создать текстовый файл tf_2.txt со следующими строками:
- the first 1
- the second 2
- the third 3

		>  cat > tf_2.txt
				the first 1
				the second 2
				the third 3

#### 7. Зайти в папку inner_dir_1

	> cd inner_dir_1

#### 8. Через cat сделать текстовый файл tf_3.txt  c любыми строками

	> cat > tf_3.txt
		    the first 1
			the second 2
			the third 3
				
#### 9. Через cat добавить в текстовый файл tf_3.txt строку “the second 2”

	> cat >> tf_3.txt
			 the second 2

#### 10. Через cat добавить в текстовый файл tf_3.txt строку “the sec 2”
			
	>  cat >> tf_3.txt
			  the sec 2

#### 11. Через cat добавить в текстовый файл tf_2.txt строку “the sec 3”
			
	> cat >> tf_2.txt
			 the sec 3

#### 12. Через cat добавить в текстовый файл tf_3.txt строку “the SeCoNd 2”

	>  cat >> tf_3.txt
			  the SeCoNd 2

#### 13. Через cat добавить в текстовый файл tf_2.txt строку “the seConD 2”

	>  cat >> tf_2.txt
			  the seConD 2

#### 14. Сделать текстовый файл tf_4.txt в котором будет 15 строк.
			
	> cat > tf_4.txt
			1
			2
			3
			4
            5
			6
			7
			8
            9
			10
			11
			12
			13
            14
			15

#### 15. Сделать текстовый файл tF_5.txt в котором будет 13 строк.

	> cat > tf_5.txt
			1
			2
			3
            4
			5
			6
			7
            8
			9
			10
			11
            12
			13

#### 16. Вывести список всех файлов в папке.

	> ls -la

#### 17. Выйти из папки inner_dir_1

	> cd ..

#### 18. Вывести содержимое файла tf_3.txt в терминал.

	> cat inner_dir_1/tf_3.txt

#### 19. Найти путь к файлу tf_4.txt

	> find -name tf_4.txt

#### 20. Очистить файл tf_4.txt от содержимого без удаления самого файла.

	> inner_dir_1/tf_4.txt
		
#### 21. Найти путь к файлам у которых есть  “tf” в названии.

	> find -name 'tf*'
			./inner_dir_1/tf_2.txt
            ./inner_dir_1/tf_3.txt
			./inner_dir_1/tf_4.txt
			./inner_dir_1/tf_5.txt
			./tf_1.txt
			./tf_2.txt
            ./tf_4.txt

#### 22. Найти путь к файлам у которых есть  “tf” в названии и буквы в любом регистре.

	> find -iname 'tf*'
			./inner_dir_1/tf_2.txt
			./inner_dir_1/tf_3.txt
			./inner_dir_1/tf_4.txt
			./inner_dir_1/tf_5.txt
            ./tf_1.txt
			./tf_2.txt
			./tf_4.txt
				
#### 23. Найти строки в файлах где есть комбинация букв “sec” в текущей папке

    >  grep sec *.*

#### 24. Найти строки в файлах где есть комбинация букв “sec” в любом регистре в текущей папке

	> grep -i sec *.*
		tf_2.txt:the second 2


#### 25. Найти строки в файлах где есть только комбинация букв “sec” в текущей папке
			
	> grep -w sec *.*

#### 26. Найти строки в файлах где есть только комбинация букв “sec” в любом регистре в текущей папке

	> grep 'second' *.*
		tf_2.txt:the second 2

#### 27. Найти строки в файлах где есть комбинация букв “second” в текущей папке

	> grep -w 'second' *.*
		tf_3.txt:the second 2
		tf_3.txt:the second 2

#### 28. Найти строки в файлах где есть комбинация букв “second” в любом регистре в текущей папке

	> grep -w second *.*
		tf_2.txt:the second 2

#### 29. Найти только путь и название файла в строках которых есть комбинация букв “second” в текущей папке

	find ./ -type f -exec grep -Hl "second" {} \;
		 ./inner_dir_1/tf_3.txt
		 ./tf_2.txt

#### 30. Найти все строки во всех файлах где нет комбинации “second”

		> grep -rv second
				inner_dir_1/tf_2.txt:the sec 3
				inner_dir_1/tf_2.txt:the seConD 2
				inner_dir_1/tf_3.txt:the first 1
				inner_dir_1/tf_3.txt:the third 3
				inner_dir_1/tf_3.txt:the sec 2
				inner_dir_1/tf_3.txt:the SeConD 2
				inner_dir_1/tf_5.txt:1
				inner_dir_1/tf_5.txt:2
				inner_dir_1/tf_5.txt:3
				inner_dir_1/tf_5.txt:4
				inner_dir_1/tf_5.txt:5
				inner_dir_1/tf_5.txt:6
				inner_dir_1/tf_5.txt:7
				inner_dir_1/tf_5.txt:8
				inner_dir_1/tf_5.txt:9
				inner_dir_1/tf_5.txt:10
				inner_dir_1/tf_5.txt:11
				inner_dir_1/tf_5.txt:12
				inner_dir_1/tf_5.txt:13
				tf_2.txt:the first 1
				tf_2.txt:the third 3
			
#### 31. Найти только название и путь к файлам где нет комбинации “second”

	> find ./ -type f -exec grep -Hlv "second" {} \;
		   ./inner_dir_1/tf_2.txt
	       ./inner_dir_1/tf_3.txt
		   ./inner_dir_1/tf_5.txt
		   ./tf_2.txt

#### 32. Вывести в терминал 4 последних строк любого текстового файла
			
	> tail -n4 ./inner_dir_1/tf_3.txt

#### 33. Вывести в терминал 4 первые строки любого текстового файла.

	> head -n4 ./inner_dir_1/tf_3.txt

#### 34. Команда в одну строку. Создать папку и создать текстовый файл с содержиммым.

	> mkdir dir_2; touch dir_2/tf.txt

#### 35. Команда в одну строку. Переместить в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”

	> xargs -r0 --arg-file <(find . -type f -exec grep -lZ sec {} + ) mv -i --target-directory ./dir_2/

#### 36. Просто вывести в терминал строку “Good job!!”

	> echo "Good job!!"
