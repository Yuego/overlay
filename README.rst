Мой личный оверлей
==================

Установка
---------

Чтобы добавить его в список layman`a, откройте **/etc/layman/layman.cfg** и сразу после строки::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml

добавьте::

        https://raw.github.com/Yuego/overlay/master/repo.xml

должно получиться так::

        overlays  : http://www.gentoo.org/proj/en/overlays/repositories.xml
                    https://raw.github.com/Yuego/overlay/master/repo.xml

после этого выполните::

        layman -L
        layman -a yuego
