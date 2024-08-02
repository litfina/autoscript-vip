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
BZh91AY&SY\^� ���� ����������pF@�  `
ݾ�fS�U�ǮN��w: �� �5P�H�x��Q� 4�h�hzM����4�  	"ȧ�x�S�z�T=A�6��M4��z� b h4� p  �  CF�      Mh�	��M4i�a �dhi����&��� �D�M��lI�=Fh�4� 44     � �Bi� ���#Pє��Si6�Ќ&Fjbi��24b�/1�iυ�"10�0�+#@�����I�3��i��]AM)��:����>�4�@C�$wd�I
�hH&K��n��E���N����U�1+Z�c5����x؊Fi���Sҝ6"7�1f.taW+i#-yА�=�I*���r�%��wu��%����U��r� B�Ol�Q���d����.�X�! ��D����X,D�ҁ���$$�7P���C{Y,t"r}:v�f�����x�*����E�#���1����@4�w�����py�����kH��!#��8���}fy{����l����7\��k^[�3D�{1���1k���}�]ҝV30���Z^�<�5�5!���Ih>N��u����,��P"��,ؠXt4�̔IȊ={I8��o��"0ٓmue(�r�p�dXU\�"Z1XCe��^y$7�s��U����1rp9�hN�S%L��|�?D�l�7?�cE2�Hw޷�3ш�i8rd	 �=�x5b�o�c/L�߫�vO#~�v����2P�f�I}-1
e%��QH�<��B,��IÀr��\��i�J"�8])�y�'8�H1DR�8�&�\����O� �&1�>�f���}��z�
����TIBHCR�0 ~;��F�����5�?�/� (����$&�4h��G�o����ܯNڕ�T; �@pϝ�!���|��ERD4�@��W,�r��'��͜�le�u�Dx8�|D�H?�ǰ����
�L@$�.Y��=Ύcf�����L=/�qu/���.��uybhZA$H�����E���b�kZV��C�Ȑ���Ύ�,6'j����뼧-:{rI'����8��,SD�S|��#�P�P@-&VT-Ő�� [3+1s�Ht�p�UN�;T��R
���&5��m&��bֶ��s|�Г�p�nG���ëz\;�!��G\��!����t�s	Ƅ�����y	h���D�� w�$H�'���1�-�9Ȥ>z�p�Xհ?�st���ù�}B[C�E��Aԁ6�Ґ��E7�r�����c֍�o�t�\���#�=�{��!�-��
���rR�i�%���aUT�'jԇ�0�C
�,��Mt�JL�IYTh
�ȧ�tu���r�u�)T2�U7C	��\?P�� �5ʻ�\�
(��UUƛ��Z�P)%W��i���k8.��M(�W��M�dۘX�2Ӓ����	����
(�]�ޢ��0#<�� ��P�TQ|X	�$ m������2g1O���`<`�!��z�M����n>��]G�B�$V����{h�"�^��d �!�'��U���[Bg��TK@��i,R�i�o�	�ł����ɬIX�q����Lʶ
�E�ka92�-��D0q�H-�6���Iw�||Z7�"yD�I����\xf�	=����6�,����]�q�T�j�QK�ߩk�.��+��>h�X�� � \�t�gCˊ^��4&�Ը��=��� �ht�rF9a�K,��F���l+\@�&j1vD;|b�8�;
M�f�3��7*E-�S`0�M�p�J0-�ɻ�t�.�xG�u|�DC�,cݮ����Pw�yĐ�.y��Z�pAx"��7�^��)[6��,��Hl����ʧ
�BdӖ~vc�#d�R��t!�j@,��&W)�CP�df� X
bӒ��6+���+����(��!N$��>,������]'o���	9�E_}X�ҁ$�b(�-�y���/n,bR�
`��;�-���]'b	�P*�ת��v��[�h�͉ ���!�s����q�5l���*|���r��vV����2K��#��9H%�H'����^(u�ɴ{wq��Z��CZP�������T|�2��vP��}���;�!�\����\�8p�+�j3:L��2J�2̤��=YUOL=U��XЍ�jV����]E6�HT�$s:�-X�uo�[ٙXp[�%���M:r��E�l��z
���������I�Z�81T�Ķ�f�La�8�&�VB[o�d^!�28�X�\6p��]�CA��N��	`��yy :�Y ��ҭ�*u4�A�����TAI^4��Qϒ;���]��E�l<P�h���/�	��zB���T?��2Q$0��Rb�d	dO��� �t��JX��O��A����"�(H./_�