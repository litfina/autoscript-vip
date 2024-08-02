#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYmN1� ��qx����������`���P  @ �| J* �B���D*���!T�
U$�*���8�ѣA�@�    �   � hhѠѠh    d   h�44h�h�4    2   4@�4h4h         �5R�&�����E'�m'�S4ԙ�=��Oک�S���=&�� �JQ4&�ɓ)�=���= h���h22z�SF 4zNY~�:�#���=�#|awX���=3I������3�sm�kc)��d����۲k~3k�3��72r�rp�Xk��'3�Hɪh�&ML�Ͼh�p�jb��k����ћ[+%���擔�o��}�����&L<�m-,5�cZ��������.���'��f����6�j�3���3~�0�V�Y��:Y1}3������8*�;\&����joV��l4d֗Ү���9Ui?l�J��a�֛�[K{F��f�e?[����c�\�+|ђ�Oɓv��/y��k���f�'m�w�s�\�����/�9F��y�W��Ⱥ���W*[����'=�[��*��f���Q�����K�C�2�������Yb21ib�1�S�FM� �eZC�t~+ﯞ4��m�k\�|�ՅxgS�k{뚭�G����
�K�6��E��V��E������_=J�?�vO��ud����or��{�,3��J�;��hɇ�+�>'�?�/3k7��0�fmm!{��w���2t�͍��L�V��>vM��b�C�\���lV)�?��v4{�݈���mm���Sk���[k��>ھ�rU��C�+��[����a����Yv�M������_����?|�6���\�g������U��;����x�(�0>���;:��,,Yy/�u��k,p}��dz�{�K�?!�bʆ�daiVGu�_un����,�ƀe,�a��
ĭ&�I��2t�����k'������f�a\�LL2bSQ�-o֎�ij5�ڜ(|1�+�|*��K�y��'k��YMO4�皧��Z��jJ�_���K�moz,���2�|L���5��|�oZ�Ml3}m��V�#�ʏ�^&S��e����u�^
WƲ �S#/�,����1�]W�n���Y>{���h�jt:�GD�ʙLL�t-�x�+�G��z�>+j�58�o���*��=^�Ou��ﶢ�zץY���U��u�&�\�ֶ��螚V����s��a���u6��s�pr���]�ʺ�u�69�ś����-�k)Z�w�����Oi6����?3qvM+��گ�p|��7̭���qz^�W�54t5�&��G�d�s<J�kdڇj�\�c����Ɉ�A��o�������Κ�^��Ob��_xG�s<����Xt�l�_�2��L4�,+k����φ�GB�&���S%{U��:U�2�>���5��l�Ӟy����ﾷ���'���}W��h������my�f�=]���+Z��잖����h��N�b���^��]�/�y�g5ɋX�2>�dddd�#������an�Ѵy�n��Ch���j���#�N�nk����;&O��|��9Ւ����d�=ƶ�W�����m��դʭN#��a�a��s��lnsJ�a[��/�T��S�VlW�+����M�GAab����#��G���ڻ��w+��K���Xxs��5�$n��F�dwF-cr�Q��\ͪ��Cc�+{mʕ��ZM'���)�O��Kd�N�w�حd�Gc��L?�S�خjt����������]?��d����Vlլ���2\�����Rگ
�]jެݪ�5+I�F��M�s��}X�l\#���Z�93v:�N����d�XaŲ/~b�b����|��ŃE��e�F+
��W�+��3��䶽����ɪd���f��{[���b��1,>yY%���S��RzoҮ��=j¿�j��ۺ]�����{Xź����pa�Wʭ2}J�,��x�o�J}.�XoW�N�f��0�R�+ʥ��q)��d�yYAح�pA� �Ɯ�r�Tkhܜl�e�}XƗ�ۯ1e�E����h�����h���|�=���Q�����,�l�u���3�د�;[���ms��[��kF��G��-d�����6�ѭ�n�:L��1M�g��ɆΆ,S6l_�MԮҧ3ܮ���<�ke�3��/-�Yba�+�X��k�;�g_L�a���0���4,���\��p/a^Et�«�6%mpt;]�s��W���7�$�*���v����]R���׺b0��YQ}�$�o�ղ�U��yȺV�n�Tv^�v-#�2��]4�ʮ��J�b�����a2֯a쫍����j]��nuXNE�U}sCVL�����14eS"7�|����3k��!�U�150頋�W�n*����IZ6T�%b��h6\�{���x[G�-�@���,-rﴲbV76Ϊ��8�/<å�Ι�a��t��yUy���:��a�Ξ&�
�y��\���x[Z#�F]�:�*�5Xu�%ks7N곚C[���{�q1u�Mܻi�	�p�^!�K�(��aޗ�䭔赗��nOk�M��V�d���V��n9'y]Ml�X��E�zm�ywGb���-ni2ę+��KZZVY�#[L�N,���Mʽ,��t7ձ��a-n���]KFj�+�G)�ye��$�G�)��&���7�Ck����r���������\\�ob����7���6��u�J�M-
e��2�]�U4��^�zSҫ��s��#X��2�^�o_
�����֗+�^iu�m��Ht]7�d�]�Y�b��Ɍ\Y2е����wD5M��MR��s������G�ˀq\)�4IoG�.k�GMZ�*�NU<l9��kxZSʛo��%���-c�<���\t��j�x�&��h�h��V��$:L[�ӍX-���
���le1d,��4/K�8Ohp���u�o�#t6\�^�f���:.R�'�kbnx�R�e2t#���U���mW�q4dd27�ǎ��dqF��u)�11U���&���L��u�ZZ�b�һ#qu�p��0[f�ӓRwJҮy-�rwۧ����p���Z���L�\Z�8̦S������bk�ڗ��O��^
�y�/3W�ٮ�3&-ɱ�0��a{������?M<s�ԬQ�V�=�,�����b�bV��V�"���
2����N���2��1O
�+�y�-m����-���kjM��/��}{��}+�
��b�c�Hł1d�~u�#�x_J�>�>���Z�X�#����?�]��BA�8ƌ