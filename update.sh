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
BZh91AY&SY^N8  �߀ ��%�*����P�nt�e  6��M	�O�CL�j��A�i�D�!�CC�0�L�?�UP       P&L�~�e6S�OS��ɠ2hԃD�F�444d�M0��G�?!b?SF������U����*1�x���d�,��ĝ@�����^) �^	Y�!� ����      ffff���׽\�/�A\MC�kv4	̈s�wp�(]���ȸ"�;���B�s��R����*;Xu$���J��Z�E����uT$�����J�]�aU�}����`��	h�F���`Y�j,-����������ދE@QaP��
����\"@F�dD�=T��BvK�D�j�L�R�Q�=�CB ��"B�i6�C�p�H�����$$���脧�]L�!���'�����kS�>6A�R��S9�;K�Xy�ډZ<�	(�cdE�G���}�I$�l�����b.��E��c�{�f2D�9��g�-���q7��c{b:�# `���=S]�h���?��/p���Ce���5���sE��wX�<�@,�@�Zb�C��E��HHX���D���f��HH^
拱���n.CW�-q"���������i��Fi ����EmE�����,�䋫b/i���j�"�Cе�����"����L;`vmnv��mi������Tը�ֈ��kd.ӱ�6�_S�,riF�"�+k�3I$��+���DE�xtuGD\�^�K�+��I$�6��w64_F.�<����H�
k�� 