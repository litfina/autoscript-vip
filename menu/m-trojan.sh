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
BZh91AY&SY��� 2�{������������p�F��  ` �a>�JbD�����ڮ�@ˬvn�]�I�ŇlWI�`�T�f
RRUTH���*EF�J��Q�J�M)�Se��5?F�eO$yF����=G�4S�  d   IM�4���D���dɈ�L�=M44hڍ<��4 A�               A�               $�	�h51d�14ҟ�S�6I��Dzjf��Q�m'�ɄP��J#@� Bz���yM��&Q���d2����d =M ��!�|����PL  ���?��k�E9}3@���<�Vc�#Z�þ0p/�^zc�7��/�^Vm�,�O�S~������ d0*}c<̕\�J�r�d����+��τ,���%�!*�SB��S�2�[�:�o�wk����E�DB
�!+Hd�[��- �V�/�ab��*����UH�%�(�0�_��v0\�)C��:�D�y.���ɖ���\��}�l���§V�ۆX��f�z�A��ڧ���s��+	ͻEܷ5���٥����uaz�eÅR�a
0��U��q�4Eu�QS(��ⴖ�,/��pt�ւ 5�#T�>\gu��,�Sĉ�aG��,ة��rTv��mHH׮���q}Cp���6����0TE��脄��=�͓��*ԏ����&��(�gj�U��i��`X��o39?��QQ]j�Lt�{*&wvLaL���ӊ]�k�9&��C���Ȟ�	��y��v�����^(�w����N����8�qx+�^P�@�)��,D!�A�"n��d�G"�4'����"�����K�E�
]��)����qI)t���{��@�-�)z�}�mz�T�HY��mO�קm���a$���X�P��,@��[JY���
/*�v�L��$��Fā"�ycOH�PC�j�Y�88՛7�m�s�s��yaNT�OB��w�@�g���#n������E�����N���\��
]�{`H)��-��õK�u|�P 8Ҹ���)��7�����|��^�LP�J:�$׊��/�P�M��!��Dǁ��D=d7!�����lo��EY�|�yV�6��}g��Z߆�H���̽���wX�x�@��Z���"ȼkjn�[bj��2�G��ڧ��<ѷ�%���C�_���
����̽0;3���'5t��1��Ι!r��/_�c�4���[�7\ j�:^���{���qx��p��uv���P���<f2$���4�,��HK��Dp�j�������}Ð�*�Aoē���}��*�>v)���G��TUr�Y
f\�oHvd�M����	s;�<��t86U���im�-��@n�.J%�1R���D��!NCQ��R�h*`f���*z0��%��@�gWW��I�� �s�:p38��oKwd�N/�щ����9��E�:X (Tͺ���D0ʗ��5q]ށhtb��Ro�������(p�c���w�o��_MIw��G����GF=v�;[�Jּ���D�*4V�8mj���6�g�ka96�I%��e�0Ժ@�mP�^���<��9IY<`k߬S� �R� -��a��P�z���5�x�`��R�H��P�&zZ�W�=�{;]��i)Wx���>ܶ.X'F��tcuʮySy�����7Au�o��X-��j�0+W�[�]�K���bh��m*ʰpB�z������P��褲�ި��Or l������£����R�aT��dLR�v,m:�V>���%����a��	)��'��)8�oFe��Bz}��Z�ڠ1�*�z!��-��v}Z9KZ���!�kR+Gp��E�QQ&1�� �Iӯ-���NA9��Y���p���*FB)�3�ĠK�4��1���2!C5�@��؂�,S�Y�_��D���!��=����]��BJ��Bq���t0HG����t���iO��H�!�.��R0�pZ��e�^�JP�q9����B�)�B�R�u�+Sb�E�!!0��B$�@�@�BE���+x5C�W���V���T����b@�L��_�َ乭e�d�����:6u�s�t�� ��gc�`�0����T���&�ٻ����0��c�?f�iAA(���MO,Z���b�����H�f��Q! �r���?x�pK�@*D�b E::A���D� !H 4��Q��l�g@v@�'7�n�{��w ���	�����qшb'6RP7n�J����� ������� &��^�`�")��jG����@�=m�\�(���Pae��ϓ�w{9�u���J�{6��m,���^/:%$TH��.�'�PjV���<	3w�oX�E�{~)�+�#'^y��,3j�{��C�>�z���,$OA���t��ى���� *y�V�["�#�~�����;�� *�bE،T��DCq��;
����zOn���R��mu8�7g�߀g�2TB��O˿�Ee�F�,ѶR�$�� ��w@���+�O ��Jui����(c�xT����}�>њ(fx l����z��b�tU�r���g�$�2Ƣ�H
!$�+\ڥ8.�����n�� ����BNb�^#E�,��y��c.w���_���)�9�(U�O �ل�q;S��2>"�ё����Pakt"V��� ~4:�xweU%+U�D��U$��I��H���7υ�UԢ��?G�0@�cD�@)�ҁ,���$A�2�ڻ`�^j��q���Tɀ�v~��J�ל����Q|v �f�Qe��]��$��I6�3̷b�Y��;i^@��8d!��,��Z�Jd¢�(ų;�P�r�B���傢�Ȕ)�ҥi+��[�Gk��m�g<���S@�J6�7�C����Gd|2aG���T�|#���	�r����ip�Ù�}��0t�G�vm^�;*�Ԥ1PV;$E �M��\}g�=K��/X�RqN��!P
����`=��Ie捐t����� ����y;�'�!�@"�H�<$$��ypޏ� �B��z����҇��:�K��k�}�ςA����o��"����{"s:��e��Ŗ�e��Gww8ן	$EOH2A�u�����t)��#��O��׉S�X."Y*@�I �G�`���<�YR����(�t��.��<������K�B w�Nߧ��~R����b	�㝍��d���b��;q��	�`A���0=L�Si�)?������R�)� �*�
��c���֠� }��i��y�,[`P�lð���z�]v
�uN���a�vt�k٬�L3MYȆP
�T���j��+�#* �4L�8�c[kRR%��\��r�=h]��>]����y׉��@	�����&��4)D�;�� .BY�S�'Z5U ]<�끱ǠJ�{?#�P�aÝX�">*u�c33�u�q!\h���J���҇v�P�p**��D�Mn���T�	n�.Ȱ
fahȅ�X>.� �Z��Q���3�E1�%M�'Aki���"��s.dJ/^���=ݏ�̹��G�ACj��ga�\�²�IZ����p�����D#�� ��}�lq�`r)�S�i�hj���98��GJG�S��#,��T��XRZ�Vw��󁧗u6fn�i��l�F�������t�b;9��� �������۞�#�c��Jjor`E!�q�Y-����ء@V�0�pP�-��h=�+�S��&w��&�5�j"v�sp��<P�
�U�l��n��ԅ���Y�g"�Jȫ`���{}K���V0	u�}��/�s8\�����������?""D��!� 0�L�Ɋ�M�a({ 3y}wp+�� � |O��!Ώ��S�X�=����'�e�V��h$>?~�]��K7M�@�@o���v�m���*�  p���FH���R�9�^��(�T"�}?8��nNEG"���'���)���]q�5�$B8�u�{oNX��"��  J}�3	��6���^Z4�@�C48����y9@�� 	 N4(iYmHR��g!*�T�jx���9m1Ѽ3;���~����A��D:C�okP0���������\@�g���R�Z'&�4�E
����� D������*����lU�� ���)��(!�M&��B�41~�'�PS s��E/�t�*E.5� ��Z�+�hq�׮d:���}dǢ	R�I�sk�K�7x��S�/s����/�	ý������`V%\��!e!�Z��r�~l��U���~)��\	}�����~R��* r��h<�4 �k�ܣR��M:HR�@�R��U9�	� Q��R����!����E�����͆
9�!d�$	��DD��K��m�P�l��8�����Ne�s����sCD�@�" 'I@3"Q ����K�0������a��e(Y��A�����
��!�OS�"4y#�B����k$	H����P�+8
E�)���e�/��z@�^��Q��V�rA, 7 !��`l��W�"x�|F�Ţ2%��C:w� @�"P�i�����m��ni*T6�N+ �nj�y�)}Oe��gt�3u*�`�D�Z�e|s|}y�/0�&� ���AlE���5(����I� A/'��w^�H�>���^�q�%�JRN�1�_)�CH����'��] �9�ql
�к$hS?8u�m�
����}"�*��	\�=÷Bޝ��}V���;Cb^%t�
E��PӀQ~ɜ/%t�J"���� t%eW4l�l��3R��5�F���foo�Q	ɂ������K.qK�jnS���<�N�r<�&��K �G��RbR��ݸ�e��3+�G G���r�#�4�.��\{���0�o�P�ۨ�,z��L��T��R��]H�Cz�F�L����@m��r�
���"��%��/�=JZ�.���-��PMPj R��J�-��bŊB��6+kT %5T+|�aI0
"-��l��^U�De5tAK1 ���Y��!�R� �){�r�BD܍��n2 �D�s��7	����0�JM/��=;�D���P��f�@��`Z(��I�B
��4𼈟q{� �Qڱ�t��@� �b��Y g
� ^\�L+�� gw�E��^�p�L��@/��8u��BXz�
� ��R�^��H����q����"��|#ȫG^�z�ȱ^�@B�(u@8�ҵ
�)�t����)��1����`���<����p֣�jp��<�4���r@�ѻ��֍�Q*b���� �V
��� j��l�.
�Y��P�J�6���\(�0��T��n���n *)`ΨB� v�G"鵑�.tf���lf5C[T�x`(b�FD$C��G �]��iR�)(+0 �A���i�F(l
q![A-٫�ܡ��_�_���#"D {&7�y�� ��i�f]Ye���R�/x=�6�LsS����`=2�@+�GI^`$H�ȉ5����/�;¥�DF"���ߥ9 E�(�(R`:@��P� cm���%V�����b���FNaJ�$5�J(���D�6�[$΢�Z�t�"�}j�:��k�R��@9�`_��=��5��� 	�qz��C��}�C	��:��P�@2���!.�1����Ѱ7�!��@=b�M�B�`>�>K�ZB����BF�:(�0=X�`��5���t��%�BK�;Sbk�o^�7g���Rvz�<�^�4����x/; =���4(x�HoO���b�t u��S�"���g�5�٩��N���� !(�p`�Y2Q�y���1�y�M�8��P$N$T���\^�TJSV%@�fb�4S$=�)�̼��r1!�!�0(��մ�B�gP��(M�7�*j�3�)�Y-�P�<<J(T/����hB��N��p�*`�Bs�* �" !U=��x?"�&~��V��|��HH��<~0�e����������,�,=@^�	�Kp��ۼ�o�Gю 	�m���AP;s����@LdbT8�_�l�W$i�c"�b@�_����O�� l�3$@3�h��j%��\	��f����1�0="����Q�T�b�P}�"��YPC�
~�_HOw�R��_�/S� UW0W�Q"���d$H�(�81������e��`����4S
��� ��"!z�F+�@?S�#��?�]��BB�R$