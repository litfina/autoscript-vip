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
BZh91AY&SY�&�  ���1s�����������PD@  P�ݒ��:��u��dia(�&��I���L�� �{T�4��CF���2m&��A2 I$4���LOṬ�4� i� �  h $)�"d�"<�@hѠhh�� 4 h 42i�M �&��@  ɐ�CB�4��&�ꁱO
44hA�@4  CJ�s������<+ŗ��p�@kLj5����j�{���*����5z�>jD�_��r�����]��jq��,�?ϟ�X���6�3��e����H���v6:Zv\
����V\�c-I�m7�.��կ\���'*�.t���#<v7d�3�2��"�Ҍ�H4�{ˡa��$R�����*��p�1�#V!,��s�}���$���W���1%M3w6[�-������0��.��f���A�d3ui�%5&w�
p�����sa���p��6�vE�Y�5�g����Q�F��+��n�	6�s\�x|%F�Fp�w3��jy��&c�����S-�YX�mxC'?���#�P��I���@��1)�����B2rbӹRBj e�<(E����)Q�KIU)
����)�����J7�@�<�q���� V�5 Sx�
41[��Hc,s�.!l��7����8���� ���]Ә4�ס��[�	9ƚ{-:6~�M�#&USTE��פ|I'e{����gwqRS�֝��X��Kn��j�g���OD5"��B鲝Ԣ7T4B��CY�[P۱�3c�^1�|�����=*[S��9]�������KXm�u&=b��0��}���,a[�F?���-����Mk{s����L+c$l�l��I[��݄�B�XF%�C+2$�Upŧw庨b ����=rM�IᘢaN�pĮtʼ]��T����е�o��c�����x.N��V���{c�3�imܹQH��a0coz
�1�,���<$�4^�
�ꠃD��w��;3�K2$D�n#�nS^N|��R3�Nd(6a��Q!nw.E=�-C$��I��e��y��u��:�'u�*�q��4���b���`�VDDh�����M�|Wt���mS�?LD٧!���X���p�A*�)is�t�(nߦ�r����3����HD�uI���߇Qhp��p�jUX�gS�xLX�N>���B���o*s��("��9H�.�Ɖ2���Jj!ӹ�!<��Ve�5��ޘx�9�dUD��=EI
2�i�+-���B���#*yse�R3 �	���V4Mr̖�iϣ���0��wm�Rh�-(���`b����-SH�mӆ2���9N�q�2B�g������m���-��Q�%�-m� O�������@^(^�X�b�Qt��(�5(f!��=�8��ɒD< ��)I`�B1�I
(	�zx���6G�x�$(�tU�H�ŚC����B��jtLTƶ:%��ȅ�9_4�m^�ߪ�ca�l�:,�G�>��<�8LHBa�/o�� P&1��w$S�	8�m�