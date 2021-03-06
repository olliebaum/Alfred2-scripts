FasdUAS 1.101.10   ��   ��    k             l     ��  ��    R L Note: remember to add "on alfred_script(q)" back in when running in Alfred.     � 	 	 �   N o t e :   r e m e m b e r   t o   a d d   " o n   a l f r e d _ s c r i p t ( q ) "   b a c k   i n   w h e n   r u n n i n g   i n   A l f r e d .   
  
 l     ��������  ��  ��        l      ��  ��    b \  Step 1. Get a list of currently running apps 
		  	   and store in appsRunning variable        �   �     S t e p   1 .   G e t   a   l i s t   o f   c u r r e n t l y   r u n n i n g   a p p s   
 	 	     	       a n d   s t o r e   i n   a p p s R u n n i n g   v a r i a b l e            l     ����  r         v     ����    o      ���� 0 appsrunning appsRunning��  ��        l     ��������  ��  ��        l   4 ����  O    4    X   	 3 ��   Z    .   ����  =     ! " ! n     # $ # 1    ��
�� 
bkgo $ o    ���� 0 p   " m    ��
�� boovfals   l  # * % & ' % l  # * ( ) * ( r   # * + , + b   # ( - . - o   # $���� 0 appsrunning appsRunning . n   $ ' / 0 / 1   % '��
�� 
pnam 0 o   $ %���� 0 p   , o      ���� 0 appsrunning appsRunning )    add to appsRunning.    * � 1 1 *     a d d   t o   a p p s R u n n i n g . & - '---- i.e. If app appears in the dock, �    ' � 2 2 N - - - -   i . e .   I f   a p p   a p p e a r s   i n   t h e   d o c k ,   ���  ��  �� 0 p    2    ��
�� 
pcap  m     3 3�                                                                                  sevs  alis    �  Macintosh HD               �Ok�H+  uF�System Events.app                                              y��A�I        ����  	                CoreServices    �Ok�      �A�9    uF�uF�uF�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��     4 5 4 l     ��������  ��  ��   5  6 7 6 l      �� 8 9��   8 3 - Comment out text below when using in Alfred     9 � : : Z   C o m m e n t   o u t   t e x t   b e l o w   w h e n   u s i n g   i n   A l f r e d   7  ; < ; l  5 : =���� = r   5 : > ? > n   5 8 @ A @ 3   6 8��
�� 
cobj A o   5 6���� 0 appsrunning appsRunning ? o      ���� 0 q  ��  ��   <  B C B l  ; @ D���� D I  ; @�� E��
�� .sysodlogaskr        TEXT E m   ; < F F � G G � N o t e :   T h e   u s e r E x c l u d e d A p p   w i l l   b e   s e l e c t e d   r a n d o m l y   f r o m   t h e   a p p s R u n n i n g   l i s t .��  ��  ��   C  H I H l      �� J K��   J Q K  Step 2. Find out which app is frontmost and store in frontApp variable.      K � L L �     S t e p   2 .   F i n d   o u t   w h i c h   a p p   i s   f r o n t m o s t   a n d   s t o r e   i n   f r o n t A p p   v a r i a b l e .     I  M N M l  A W O���� O O   A W P Q P r   E V R S R 6  E T T U T l  E K V���� V n   E K W X W 1   I K��
�� 
pnam X l  E I Y���� Y 4  E I�� Z
�� 
prcs Z m   G H���� ��  ��  ��  ��   U =  L S [ \ [ 1   M O��
�� 
pisf \ m   P R��
�� boovtrue S o      ���� 0 frontapp frontApp Q m   A B ] ]�                                                                                  sevs  alis    �  Macintosh HD               �Ok�H+  uF�System Events.app                                              y��A�I        ����  	                CoreServices    �Ok�      �A�9    uF�uF�uF�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   N  ^ _ ^ l     ��������  ��  ��   _  ` a ` l      �� b c��   b ; 5 Step 3. Add Finder, frontApp to itemsToExclude list     c � d d j   S t e p   3 .   A d d   F i n d e r ,   f r o n t A p p   t o   i t e m s T o E x c l u d e   l i s t   a  e f e l  X ` g���� g r   X ` h i h J   X \ j j  k l k o   X Y���� 0 frontapp frontApp l  m�� m m   Y Z n n � o o  F i n d e r��   i o      ����  0 itemstoexclude itemsToExclude��  ��   f  p q p l     ��������  ��  ��   q  r s r l      �� t u��   t @ : Step 4. Take Alfred {query} and store as userExcludedApp     u � v v t   S t e p   4 .   T a k e   A l f r e d   { q u e r y }   a n d   s t o r e   a s   u s e r E x c l u d e d A p p   s  w x w l  a m y���� y r   a m z { z n   a i | } | 1   g i��
�� 
pnam } 4   a g�� ~
�� 
capp ~ o   e f���� 0 q   { o      ���� "0 userexcludedapp userExcludedApp��  ��   x   �  l     ��������  ��  ��   �  � � � l      �� � ���   � R L Step 5. Check that userExcludedApp isn't empty, otherwise display an error     � � � � �   S t e p   5 .   C h e c k   t h a t   u s e r E x c l u d e d A p p   i s n ' t   e m p t y ,   o t h e r w i s e   d i s p l a y   a n   e r r o r   �  � � � l  n � ����� � Q   n � � � � � Z   q � � ��� � � >  q x � � � o   q t���� "0 userexcludedapp userExcludedApp � m   t w � � � � �   � r   { � � � � o   { ~���� "0 userexcludedapp userExcludedApp � n      � � �  ;   � � � o   ~ �����  0 itemstoexclude itemsToExclude��   � R   � ��� ���
�� .ascrerr ****      � **** � m   � � � � � � � � I   h a v e n ' t   r e c e i v e d   y o u r   E x c l u d e d   a p p   c o r r e c t l y !   C h e c k   t h e   a p p l e s c r i p t .��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 err1  ��   � k   � � � �  � � � l  � � � � � � I  � ��� ���
�� .sysodisAaleR        TEXT � o   � ����� 0 err1  ��   �   Displays the error    � � � � &   D i s p l a y s   t h e   e r r o r �  � � � l  � � � � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � F   S c r i p t   r e t u r n e d   a n   e r r o r   m e s s a g e :   � o   � ���
�� 
ret  � o   � ����� 0 err1   � m   � � � � � � �   ��   � #  records the error in the log    � � � � :   r e c o r d s   t h e   e r r o r   i n   t h e   l o g �  ��� � l  � � � � � � L   � �����   � 3 - Terminates the script with no further action    � � � � Z   T e r m i n a t e s   t h e   s c r i p t   w i t h   n o   f u r t h e r   a c t i o n��  ��  ��   �  � � � l     �� � ���   � 4 .Prevents dialog from having repeated App names    � � � � \ P r e v e n t s   d i a l o g   f r o m   h a v i n g   r e p e a t e d   A p p   n a m e s �  � � � l  � � ����� � Z  � � � ����� � =  � � � � � o   � ����� 0 frontapp frontApp � o   � ����� "0 userexcludedapp userExcludedApp � r   � � � � � m   � � � � � � �  F i n d e r � o      ���� "0 userexcludedapp userExcludedApp��  ��  ��  ��   �  � � � l      �� � ���   � B < Step 6. Ask the user to Confirm before executing the script    � � � � x   S t e p   6 .   A s k   t h e   u s e r   t o   C o n f i r m   b e f o r e   e x e c u t i n g   t h e   s c r i p t �  � � � l  � � ����� � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � : Q u i t   a l l   a p p l i c a t i o n s   e x c e p t   � o   � ����� 0 frontapp frontApp � m   � � � � � � � 
   a n d   � o   � ����� "0 userexcludedapp userExcludedApp � m   � � � � � � �  ?   A r e   y o u   s u r e ? � o   � ���
�� 
ret  � o   � ���
�� 
ret  � m   � � � � � � � 0 ( F i n d e r   w i l l   b e   h i d d e n . ) � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  N o �  ��� � m   � � � � � � �  Y e s��   � �� ���
�� 
dflt � m   � ����� ��   � o      ���� 0 question  ��  ��   �  � � � l  � ����� � r   � � � � n   � � � � 1   ���
�� 
bhit � o   � ����� 0 question   � o      ���� 
0 answer  ��  ��   �  � � � l     ��������  ��  ��   �  �  � l      ����   I C Step 7. If the user confirmed the action, then execute the script     � �   S t e p   7 .   I f   t h e   u s e r   c o n f i r m e d   t h e   a c t i o n ,   t h e n   e x e c u t e   t h e   s c r i p t     l ����� Z  ���~ = 	
	 o  	�}�} 
0 answer  
 m  	 �  Y e s k  �  r   J  �|�|   o      �{�{ 0 	cleanlist 	cleanList  l  �z�z   [ U Step 8. Unless a running app is in the itemsToExclude list, add it to the cleanList     � �   S t e p   8 .   U n l e s s   a   r u n n i n g   a p p   i s   i n   t h e   i t e m s T o E x c l u d e   l i s t ,   a d d   i t   t o   t h e   c l e a n L i s t    Y  E�y�x Z %@�w�v H  %0 E %/  o  %(�u�u  0 itemstoexclude itemsToExclude  J  (.!! "�t" n (,#$# 4  ),�s%
�s 
cobj% o  *+�r�r 0 i  $ o  ()�q�q 0 appsrunning appsRunning�t   r  3<&'& n 37()( 4  47�p*
�p 
cobj* o  56�o�o 0 i  ) o  34�n�n 0 appsrunning appsRunning' n     +,+  ;  :;, o  7:�m�m 0 	cleanlist 	cleanList�w  �v  �y 0 i   m  �l�l  I  �k-�j
�k .corecnte****       ****- o  �i�i 0 appsrunning appsRunning�j  �x   ./. l FF�h�g�f�h  �g  �f  / 010 l  FF�e23�e  2 6 0 Step 9. Quit all applications in the cleanList    3 �44 `   S t e p   9 .   Q u i t   a l l   a p p l i c a t i o n s   i n   t h e   c l e a n L i s t  1 565 X  Fs7�d87 Q  Xn9:�c9 I [e�b;�a
�b .aevtquitnull��� ��� null; 4  [a�`<
�` 
capp< o  _`�_�_ 	0 appen  �a  : R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  �c  �d 	0 appen  8 o  IL�[�[ 0 	cleanlist 	cleanList6 =>= l tt�Z�Y�X�Z  �Y  �X  > ?@? l  tt�WAB�W  A 5 / Step 10. Unless Finder is frontmost - hide it    B �CC ^   S t e p   1 0 .   U n l e s s   F i n d e r   i s   f r o n t m o s t   -   h i d e   i t  @ D�VD Z  t�EF�U�TE > tyGHG o  tu�S�S 0 frontapp frontAppH m  uxII �JJ  F i n d e rF O |�KLK r  ��MNM m  ���R
�R boovfalsN 1  ���Q
�Q 
pvisL m  |OO�                                                                                  MACS  alis    t  Macintosh HD               �Ok�H+  uF�
Finder.app                                                     wk��`R)        ����  	                CoreServices    �Ok�      �`D    uF�uF�uF�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �U  �T  �V  �  �~  ��  ��   P�PP l ��QRSQ I ���OT�N
�O .ascrcmnt****      � ****T m  ��UU �VV * R e a c h e d   e n d   o f   s c r i p t�N  R ) # Let me know if the script finished   S �WW F   L e t   m e   k n o w   i f   t h e   s c r i p t   f i n i s h e d�P       �MXY�M  X �L
�L .aevtoappnull  �   � ****Y �KZ�J�I[\�H
�K .aevtoappnull  �   � ****Z k    �]]  ^^  __  ;``  Baa  Mbb  ecc  wdd  �ee  �ff  �gg  �hh ii P�G�G  �J  �I  [ �F�E�D�C�F 0 p  �E 0 err1  �D 0 i  �C 	0 appen  \ 1�B 3�A�@�?�>�=�<�; F�:�9j�8�7 n�6�5�4 � ��3�2�1 ��0 ��/ � � � � ��. � ��-�,�+�*�)�(�'�&IO�%U�B 0 appsrunning appsRunning
�A 
pcap
�@ 
kocl
�? 
cobj
�> .corecnte****       ****
�= 
bkgo
�< 
pnam�; 0 q  
�: .sysodlogaskr        TEXT
�9 
prcsj  
�8 
pisf�7 0 frontapp frontApp�6  0 itemstoexclude itemsToExclude
�5 
capp�4 "0 userexcludedapp userExcludedApp�3 0 err1  �2  
�1 .sysodisAaleR        TEXT
�0 
ret 
�/ .ascrcmnt****      � ****
�. 
btns
�- 
dflt�, �+ 0 question  
�* 
bhit�) 
0 answer  �( 0 	cleanlist 	cleanList
�' .aevtquitnull��� ��� null�&  
�% 
pvis�H�jE�O� , )*�-[��l kh  ��,f  ���,%E�Y h[OY��UO��.E�O�j 
O� *�k/�,�[�,\Ze81E�UO��lvE` O*a �/�,E` O  _ a  _ _ 6FY )ja W !X  �j Oa _ %�%a %j OhO�_   a E` Y hOa �%a %_ %a %_ %_ %a  %a !a "a #lva $la % 
E` &O_ &a ',E` (O_ (a )  �jvE` *O -k�j kh _ ��/kv ��/_ *6FY h[OY��O ,_ *[��l kh  *a �/j +W X , h[OY��O�a - a . 	f*a /,FUY hY hOa 0j ascr  ��ޭ