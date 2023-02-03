# Шпаргалка по GIT
## Краткое руководство

Git — это система, которая позволяет сразу нескольким разработчикам сохранять и отслеживать изменения в файлах вашего проекта. С помощью Git можно хранить большое количество различных версий кода, разрабатывать новый функционал и понимать, что нового привнес разработчик в проект. Современный тестировщик сталкивается с такими задачами каждый день — и он должен уметь работать с Git эффективно.



# Первоначальная настройка


>   конфиг: показать настройки
>   
>     $ git config --global -l

 >   конфиг: указать где хранить пароли (для windows)
>   
>     $ git config --global credential.helper wincred

>   конфиг: указать ваше имя для будущих коммитов
>   
>     $ git config --global user.name me

>   конфиг: указать ваш email для будущих коммитов
>   
>     $ git config --global user.email me@gmail.com
	
>   конфиг: включить раскрашивание
>   
>     $ git config --global color.ui true
	
	
>   конфиг: включить раскрашивание
>   
>     $ git config --global color.diff true

>   конфиг: включить раскрашивание
>   
>     $ git config --global color.grep true

>   конфиг: включить раскрашивание
>   
>     $ git config --global color.status true
	
>   конфиг: форсировать LF окончания строк
>   
>     $ git config --global core.autocrlf input

>   конфиг: форсировать LF окончания строк
>   
>     $ ggit config --global core.safecrlf false

>   конфиг: отображать unicode названия файлов без экранирования
>   
>     $ git config --global core.quotepath false

>   конфиг: указать редактор по умолчанию (для указания комментариев к коммитам и т.п.)
>   
>     $ git config --global core.editor = notepad
	
>   конфиг: выполнять пуши всегда в одноименную ветку
>   
>     $ git config --global push.default current
	
>   конфиг: автоматически устанавливать трекинг ветки при чекауте
>   
>     $ git config --global branch.autosetupmerge always	
	
>   конфиг: выполнять rebase вместо merge во время pull
>   
>     $ git config --global branch.autosetuprebase always	
	
	
# Начало работы	


>   создать локальный репозиторий в текущей папке
>   
>     $ git init	

>   скачать удаленный репозиторий	
>   
>     $ git clone [url]		
	
    
# Базовые операции	


>   показать состояние (что менялось в индексе и рабочей директории)
>   
>     $ git status -s		

>   добавить все изменения в индекс
>   
>     $ git add .

>   выполнить коммит
>   
>     $ git commit -m "comment"	

>   выполнить коммит, даже если ничего не было изменено 
>   
>     $ git commit –allow-empty -m "empty commit"

	












# Работа с ветками

>   показать на что указывает HEAD
>   
>     $ cat .git/HEAD

>   показать список веток
>   
>     $ git branch -a

>   показать список веток с комментарием из последнего коммита
>   
>     $ git branch -a -v

>   создать новую ветку на основе текущей
>   
>     $ git branch [new-name]

>   создать новую ветку на основе указанной (например, на основе origin/branch-name)
>   
>     $ git branch [new-name] [old-name]
	
>   создать новую ветку на основе текущей и переключиться на нее
>   
>     $ git branch -b [new-name]	
	

>   создать новую ветку на основе указанной и переключиться на нее
>   
>     $ git branch -b [new-name] [old-name]	

>   переключиться на ветку (фактически направить HEAD на указанную ветку)
>   
>     $ git checkout [name]

>   показать коммиты в текущей ветке, которых нет в указанной
>   
>     $ git cherry -v [name]	
	
>   показать коммиты в указанной ветке, которых нет в текущей
>   
>     $ git cherry -v HEAD [name]

>   посчитать коммиты в текущей ветке, которых нет в указанной
>   
>     $ git cherry -v [name] | wc -l
	
>   смержить в текущую ветку коммиты из указанной ветки (например, из origin/branch-name)
>   
>     $ git merge [name]

>   смержить в текущую ветку указанный коммит
>   
>     $ git cherry-pick [commit]
	
>   удалить локальную ветку
>   
>     $ git branch -d [name]	





# Изменение истории, чистка	

>   переписать коммиты текущей ветки после коммитов в указанной ветке
>   
>     $ git rebase [name]

>   добавить изменения в последний коммит (опция --no-edit если не надо менять комментарий)
>   
>     $ git commit --amend -m "new comment"


>   откатить непроиндексированные изменения в рабочей директории
>   
>     $ git checkout -- .

>   откатить индексацию изменений, оставив их в рабочей директории (git add . наоборот)
>   
>     $ git reset -- .	
	
>   удалить из текущей ветки все коммиты после указанного, оставив все изменения в рабочей директории
>   
>     $ git reset HEAD	
	
>   изменить последний коммит
>   
>     $ git reset HEAD~1 && git add . && git commit -m 'new comment'	

>   склеить два последних коммита в один
>   
>     $ git reset HEAD~2 && git add . && git commit -m 'new comment'
	
>   удалить из текущей ветки ВСЕ изменения после указанного коммита, затерев рабочую директорию
>   
>     $ git reset --hard HEAD 
    
>   удалить из рабочей директории untracked файлы
>   
>     $ git clean -fd -- .   
    

# Теги	

>   показать список локальных тегов
>   
>     $ git tag 

>   показать список локальных тегов, включая не больше трех строк комментариев
>   
>     $ git tag -n3

>   показать список локальных тегов, подходящих под шаблон
>   
>     $ git tag -l v1.*

>   пометить тегом текущий HEAD
>   
>     $ git tag [name]

>   пометить тегом текущий HEAD вместе с комментарием
>   
>     $ git tag [name] -m "comment"
	
>   пометить тегом определенный коммит
>   
>     $ git tag [name] some-commit-hash
	
>   удалить локальный тег
>   
>     $ git tag -d [name]
	

# Синхронизация репозиториев

>   показать, что есть в удаленном репозитории (ветки, теги, пулл-реквесты)
>   
>     $ git ls-remote [url]

>   показать, что есть в origin репозитории
>   
>     $ git ls-remote origin

>   показать привязанные удаленные репозитории
>   
>     $ git remote -v

>   добавить указанный репозиторий под именем origin
>   
>     $ git remote add origin [url]	
	
>   показать инфу об origin репозитории
>   
>     $ git remote show origin		
	
>   скачать origin репозиторий, не применяя к локальным веткам (в .git/refs/remotes/origin)
>   
>     $ git fetch origin --prune	

>   скачать pull request в локальную ветку
>   
>     $ git fetch origin pull/[pull-request-id]/head:[local-branch-name]

>   
>   
>     $ git pull origin [name]	= fetch origin + merge origin/[branch-name]

>   = fetch origin + merge origin/[branch-name] + rebase (т.е. избегаем merge коммита)
>   
>     $ git pull origin [name] --rebase

>   запушить ветку или тег
>   
>     $ git push origin [name]

>   удалить ветку или тег в origin репозитории (локальная ветка останется, если есть)
>   
>     $ git push origin :[name]


>   удалить тег в origin репозитории (вариант без путаницы с ветками)
>   
>     $ git push origin --follow-tags	
	
>   привязать текущую локальную ветку к ветке в origin репозитории
>   
>     $ git branch -u origin/[name]	
		
>   отвязать текущую локальную ветку от ветки в origin репозитории
>   
>     $ git branch --unset-upstream
	
	

		
	

	
	
	
# Логи

git log --oneline	показать всю историю коммитов

git log --oneline -10	показать последние 10 коммитов

git log --graph --date iso --pretty=format:"%H [%cd] %an: '%s'"	показать всю историю коммитов (хэш коммита, дата, автор, комментарий)

git log --oneline --follow some-file	показать историю коммитов для конкретного файла
git diff some-file	показать изменения в файле

git blame some-file	показать кто/что/когда правил в файле

# Разное	

git update-index --chmod=+x path/to/file"	добавить признак исполняемого файла

git update-index --chmod=-x path/to/file	удалить признак исполняемого файла

# Заначки	

git stash	сделать заначку снимка рабочей директории

git stash list	показать список заначек

git stash apply	применить последнюю заначку

git stash pop	применить последнюю заначку и удалить ее

git stash drop	удалить заначку

git stash && git stash pop	== git reset -- . ?

# todo	

git gc	

# И бонусом несколько небольших алиасов, которыми я часто пользуюсь

git config --global alias.s 'status -s'	показать проиндексированные изменения

git config --global alias.d "diff HEAD"	показать незакоммиченные изменения

git config --global alias.a "add --all"	проиндексировать все изменения

git config --global alias.r "remote -v"	показать remote репозитории

git config --global alias.f "fetch --all --tags --prune"	скачать все с remote репозитория

git config --global alias.b "branch"	короткий алиас для branch

git config --global alias.co "checkout"	короткий алиас для checkout

git config --global alias.br "branch -a"	показать все ветки

git config --global alias.nb "checkout -b"	создать ветку и переключиться на нее

git config --global alias.ci "commit -m"	сделать коммит с комментариев

git config --global alias.unstage "reset HEAD"	отменить индексацию изменений

git config --global alias.uncommit "reset --soft HEAD~1"	отменить последний коммит, сохранив изменения

# и еще несколько для просмотра логов

git config --global alias.l "log --pretty=format:'%C(Yellow)%h%C(auto)%d %C(Cyan)%ae %C(White)(%cr) %C(Green)%s%C(reset)'"

git config --global alias.lol "log --pretty=format:'%C(Yellow)%h%C(auto)%d %C(Cyan)%ae %C(White)(%cr) %C(Green)%s%C(reset)' --graph --name-status"

git config --global alias.unmerged "log --oneline --graph --name-status --decorate ^HEAD"

	
	
	