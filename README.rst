Мой личный оверлей
==================

Установка
---------
Вариант 1:

Выполните::

        layman -o https://raw.github.com/rugubara/overlay/master/repo.xml -f -a rugubara


Вариант 2:

Чтобы добавить его в список layman`a, откройте **/etc/layman/layman.cfg** и сразу после строки::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml

добавьте::

        https://raw.github.com/rugubara/overlay/master/repo.xml

должно получиться так::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                    https://raw.github.com/rugubara/overlay/master/repo.xml

после этого выполните::

        layman -L
        layman -a rugubara

