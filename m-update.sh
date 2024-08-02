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
BZh91AY&SYY�& ��E�@ ���?�������@�D@0  `({�}�5�\��փ �a���z@2�� hɄ��=F���%!�j��S�4h��   h�4��4�Ɉ�� �L�  3�Tԛ)�F�    @�  � P�)�=4�����2i��  �("J�a4i4�`�&�2 4i�@L�x�(_�7n{9���!�����V����h�QV�\M��Z�m��V�b;�͊�-��G��p���;̸��q�qH( P�� H��(8���/*��bs��W���N�]˔Ad��4�b@�x�B���e�Ъ�B�c'��	�(8��X�8��#��4��M��Ol���2Ksm�M=�ϙ�)�r}|�      c��Ŗ�Ӝ	���v5�83�l�j3)�UDQES���$�	��Jtp�a3&�HHBB��\X��Pf*�*�			*S�u��zڵ��wG!5]}�q��-�&CH"�B��;&�@�H�.�' ]�;��{�3��eҨ�]V
���z��d�	�|a�c~�5�t�ڊ#�5OڕhX�.����JP( �` �#���f@��p[���gӚR�q�N��3[�v���95�-�C��ўF��@���u]��M�Xf�����������������<�ih�HHLPZ*�����|��v7�0ؾ���}��k�x��^�wN(����a�QTs՝�v}�"q�<ϩ��D�,(Q$ �p���f`�+<�K�H�^�zQ��KE���D�R�g��۽�0�Y���H�߄4(�wN�����qX=��S�����I%�=�;�^���H�1-�뚶��P�?�m;CP��ڜ5�q6�a*I)��Jc�9�E��kI,.c;����>'��������,Y�F��n@���lU���0De�z�C��M��[��k�[F��:�0ᢊ%X^�e6��K���P�[pq��]:��v�S��M3�ʄ .�A�3�~e���̙1�����$Ғ�M�P2��໛���C����.�<NN�M����Z���x-���6u���<|xS�r T� 6��7�H<@��g
bL�xAvo��>���]���#j�6�#`/5�/��Ĭ�I�*�<��ݥ�ܫc��M,UUUb����U\�uv[΂���P����x����5$$)7H��8ۚ��3`�`<F!!!��s9"�����q�gO�fW�9Q�����\m9����^`I�mq��?8Q�Q�ҊE�}C'{��H�"�N���U@�
�҂˄8n� [K\5'qa�*h�Qm�y��`����*��A���� 9���r���p~���q���]��޷@ �9������v,��+1p.���Ͷ�p-�lm���q��mlΘub��`�9��2���Dl��-�I3�IuXI[z-z
�r��r��Al,�_��Q-�g" "��LrZ�In�B[7�G܈�:�L�T8ڷ��0{&���x��� :p�-�&� 6��ܑN$DcI�