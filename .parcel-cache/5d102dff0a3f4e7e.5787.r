�o"
assetGrapho"$$typec 2 . 7 . 0 : A s s e t G r a p h "$$rawT"valueo"nodes;I o"id"@@root"type"root"value0{Io"id"c02bba634ab61fc6"type"asset_group"valueo"code c��v a r   H M R _ H O S T   =   n u l l ; v a r   H M R _ P O R T   =   n u l l ; v a r   H M R _ S E C U R E   =   f a l s e ; v a r   H M R _ E N V _ H A S H   =   " d 6 e a 1 d 4 2 5 3 2 a 7 5 7 5 " ; m o d u l e . b u n d l e . H M R _ B U N D L E _ I D   =   " 7 0 5 5 c 9 4 b 5 9 7 1 2 9 9 9 " ; " u s e   s t r i c t " ; 
 
 / *   g l o b a l   H M R _ H O S T ,   H M R _ P O R T ,   H M R _ E N V _ H A S H ,   H M R _ S E C U R E ,   c h r o m e ,   b r o w s e r ,   g l o b a l T h i s ,   _ _ p a r c e l _ _ i m p o r t _ _ ,   _ _ p a r c e l _ _ i m p o r t S c r i p t s _ _ ,   S e r v i c e W o r k e r G l o b a l S c o p e   * / 
 
 / * : : 
 i m p o r t   t y p e   { 
     H M R A s s e t , 
     H M R M e s s a g e , 
 }   f r o m   ' @ p a r c e l / r e p o r t e r - d e v - s e r v e r / s r c / H M R S e r v e r . j s ' ; 
 i n t e r f a c e   P a r c e l R e q u i r e   { 
     ( s t r i n g ) :   m i x e d ; 
     c a c h e :   { | [ s t r i n g ] :   P a r c e l M o d u l e | } ; 
     h o t D a t a :   m i x e d ; 
     M o d u l e :   a n y ; 
     p a r e n t :   ? P a r c e l R e q u i r e ; 
     i s P a r c e l R e q u i r e :   t r u e ; 
     m o d u l e s :   { | [ s t r i n g ] :   [ F u n c t i o n ,   { | [ s t r i n g ] :   s t r i n g | } ] | } ; 
     H M R _ B U N D L E _ I D :   s t r i n g ; 
     r o o t :   P a r c e l R e q u i r e ; 
 } 
 i n t e r f a c e   P a r c e l M o d u l e   { 
     h o t :   { | 
         d a t a :   m i x e d , 
         a c c e p t ( c b :   ( F u n c t i o n )   = >   v o i d ) :   v o i d , 
         d i s p o s e ( c b :   ( m i x e d )   = >   v o i d ) :   v o i d , 
         / /   a c c e p t ( d e p s :   A r r a y < s t r i n g >   |   s t r i n g ,   c b :   ( F u n c t i o n )   = >   v o i d ) :   v o i d , 
         / /   d e c l i n e ( ) :   v o i d , 
         _ a c c e p t C a l l b a c k s :   A r r a y < ( F u n c t i o n )   = >   v o i d > , 
         _ d i s p o s e C a l l b a c k s :   A r r a y < ( m i x e d )   = >   v o i d > , 
     | } ; 
 } 
 i n t e r f a c e   E x t e n s i o n C o n t e x t   { 
     r u n t i m e :   { | 
         r e l o a d ( ) :   v o i d , 
         g e t U R L ( u r l :   s t r i n g ) :   s t r i n g ; 
         g e t M a n i f e s t ( ) :   { m a n i f e s t _ v e r s i o n :   n u m b e r ,   . . . } ; 
     | } ; 
 } 
 d e c l a r e   v a r   m o d u l e :   { b u n d l e :   P a r c e l R e q u i r e ,   . . . } ; 
 d e c l a r e   v a r   H M R _ H O S T :   s t r i n g ; 
 d e c l a r e   v a r   H M R _ P O R T :   s t r i n g ; 
 d e c l a r e   v a r   H M R _ E N V _ H A S H :   s t r i n g ; 
 d e c l a r e   v a r   H M R _ S E C U R E :   b o o l e a n ; 
 d e c l a r e   v a r   c h r o m e :   E x t e n s i o n C o n t e x t ; 
 d e c l a r e   v a r   b r o w s e r :   E x t e n s i o n C o n t e x t ; 
 d e c l a r e   v a r   _ _ p a r c e l _ _ i m p o r t _ _ :   ( s t r i n g )   = >   P r o m i s e < v o i d > ; 
 d e c l a r e   v a r   _ _ p a r c e l _ _ i m p o r t S c r i p t s _ _ :   ( s t r i n g )   = >   P r o m i s e < v o i d > ; 
 d e c l a r e   v a r   g l o b a l T h i s :   t y p e o f   s e l f ; 
 d e c l a r e   v a r   S e r v i c e W o r k e r G l o b a l S c o p e :   O b j e c t ; 
 * / 
 v a r   O V E R L A Y _ I D   =   ' _ _ p a r c e l _ _ e r r o r _ _ o v e r l a y _ _ ' ; 
 v a r   O l d M o d u l e   =   m o d u l e . b u n d l e . M o d u l e ; 
 
 f u n c t i o n   M o d u l e ( m o d u l e N a m e )   { 
     O l d M o d u l e . c a l l ( t h i s ,   m o d u l e N a m e ) ; 
     t h i s . h o t   =   { 
         d a t a :   m o d u l e . b u n d l e . h o t D a t a , 
         _ a c c e p t C a l l b a c k s :   [ ] , 
         _ d i s p o s e C a l l b a c k s :   [ ] , 
         a c c e p t :   f u n c t i o n   ( f n )   { 
             t h i s . _ a c c e p t C a l l b a c k s . p u s h ( f n   | |   f u n c t i o n   ( )   { } ) ; 
         } , 
         d i s p o s e :   f u n c t i o n   ( f n )   { 
             t h i s . _ d i s p o s e C a l l b a c k s . p u s h ( f n ) ; 
         } 
     } ; 
     m o d u l e . b u n d l e . h o t D a t a   =   u n d e f i n e d ; 
 } 
 
 m o d u l e . b u n d l e . M o d u l e   =   M o d u l e ; 
 v a r   c h e c k e d A s s e t s 
 / * :   { | [ s t r i n g ] :   b o o l e a n | }   * / 
 ,   a c c e p t e d A s s e t s 
 / * :   { | [ s t r i n g ] :   b o o l e a n | }   * / 
 ,   a s s e t s T o A c c e p t 
 / * :   A r r a y < [ P a r c e l R e q u i r e ,   s t r i n g ] >   * / 
 ; 
 
 f u n c t i o n   g e t H o s t n a m e ( )   { 
     r e t u r n   H M R _ H O S T   | |   ( l o c a t i o n . p r o t o c o l . i n d e x O f ( ' h t t p ' )   = = =   0   ?   l o c a t i o n . h o s t n a m e   :   ' l o c a l h o s t ' ) ; 
 } 
 
 f u n c t i o n   g e t P o r t ( )   { 
     r e t u r n   H M R _ P O R T   | |   l o c a t i o n . p o r t ; 
 }   / /   e s l i n t - d i s a b l e - n e x t - l i n e   n o - r e d e c l a r e 
 
 
 v a r   p a r e n t   =   m o d u l e . b u n d l e . p a r e n t ; 
 
 i f   ( ( ! p a r e n t   | |   ! p a r e n t . i s P a r c e l R e q u i r e )   & &   t y p e o f   W e b S o c k e t   ! = =   ' u n d e f i n e d ' )   { 
     v a r   h o s t n a m e   =   g e t H o s t n a m e ( ) ; 
     v a r   p o r t   =   g e t P o r t ( ) ; 
     v a r   p r o t o c o l   =   H M R _ S E C U R E   | |   l o c a t i o n . p r o t o c o l   = =   ' h t t p s : '   & &   ! / l o c a l h o s t | 1 2 7 . 0 . 0 . 1 | 0 . 0 . 0 . 0 / . t e s t ( h o s t n a m e )   ?   ' w s s '   :   ' w s ' ; 
     v a r   w s   =   n e w   W e b S o c k e t ( p r o t o c o l   +   ' : / / '   +   h o s t n a m e   +   ( p o r t   ?   ' : '   +   p o r t   :   ' ' )   +   ' / ' ) ;   / /   W e b   e x t e n s i o n   c o n t e x t 
 
     v a r   e x t C t x   =   t y p e o f   c h r o m e   = = =   ' u n d e f i n e d '   ?   t y p e o f   b r o w s e r   = = =   ' u n d e f i n e d '   ?   n u l l   :   b r o w s e r   :   c h r o m e ;   / /   S a f a r i   d o e s n ' t   s u p p o r t   s o u r c e U R L   i n   e r r o r   s t a c k s . 
     / /   e v a l   m a y   a l s o   b e   d i s a b l e d   v i a   C S P ,   s o   d o   a   q u i c k   c h e c k . 
 
     v a r   s u p p o r t s S o u r c e U R L   =   f a l s e ; 
 
     t r y   { 
         ( 0 ,   e v a l ) ( ' t h r o w   n e w   E r r o r ( " t e s t " ) ;   / / #   s o u r c e U R L = t e s t . j s ' ) ; 
     }   c a t c h   ( e r r )   { 
         s u p p o r t s S o u r c e U R L   =   e r r . s t a c k . i n c l u d e s ( ' t e s t . j s ' ) ; 
     }   / /   $ F l o w F i x M e 
 
 
     w s . o n m e s s a g e   =   a s y n c   f u n c t i o n   ( e v e n t 
     / * :   { d a t a :   s t r i n g ,   . . . }   * / 
     )   { 
         c h e c k e d A s s e t s   =   { } 
         / * :   { | [ s t r i n g ] :   b o o l e a n | }   * / 
         ; 
         a c c e p t e d A s s e t s   =   { } 
         / * :   { | [ s t r i n g ] :   b o o l e a n | }   * / 
         ; 
         a s s e t s T o A c c e p t   =   [ ] ; 
         v a r   d a t a 
         / * :   H M R M e s s a g e   * / 
         =   J S O N . p a r s e ( e v e n t . d a t a ) ; 
 
         i f   ( d a t a . t y p e   = = =   ' u p d a t e ' )   { 
             / /   R e m o v e   e r r o r   o v e r l a y   i f   t h e r e   i s   o n e 
             i f   ( t y p e o f   d o c u m e n t   ! = =   ' u n d e f i n e d ' )   { 
                 r e m o v e E r r o r O v e r l a y ( ) ; 
             } 
 
             l e t   a s s e t s   =   d a t a . a s s e t s . f i l t e r ( a s s e t   = >   a s s e t . e n v H a s h   = = =   H M R _ E N V _ H A S H ) ;   / /   H a n d l e   H M R   U p d a t e 
 
             l e t   h a n d l e d   =   a s s e t s . e v e r y ( a s s e t   = >   { 
                 r e t u r n   a s s e t . t y p e   = = =   ' c s s '   | |   a s s e t . t y p e   = = =   ' j s '   & &   h m r A c c e p t C h e c k ( m o d u l e . b u n d l e . r o o t ,   a s s e t . i d ,   a s s e t . d e p s B y B u n d l e ) ; 
             } ) ; 
 
             i f   ( h a n d l e d )   { 
                 c o n s o l e . c l e a r ( ) ;   / /   D i s p a t c h   c u s t o m   e v e n t   s o   o t h e r   r u n t i m e s   ( e . g   R e a c t   R e f r e s h )   a r e   a w a r e . 
 
                 i f   ( t y p e o f   w i n d o w   ! = =   ' u n d e f i n e d '   & &   t y p e o f   C u s t o m E v e n t   ! = =   ' u n d e f i n e d ' )   { 
                     w i n d o w . d i s p a t c h E v e n t ( n e w   C u s t o m E v e n t ( ' p a r c e l h m r a c c e p t ' ) ) ; 
                 } 
 
                 a w a i t   h m r A p p l y U p d a t e s ( a s s e t s ) ; 
 
                 f o r   ( v a r   i   =   0 ;   i   <   a s s e t s T o A c c e p t . l e n g t h ;   i + + )   { 
                     v a r   i d   =   a s s e t s T o A c c e p t [ i ] [ 1 ] ; 
 
                     i f   ( ! a c c e p t e d A s s e t s [ i d ] )   { 
                         h m r A c c e p t R u n ( a s s e t s T o A c c e p t [ i ] [ 0 ] ,   i d ) ; 
                     } 
                 } 
             }   e l s e   f u l l R e l o a d ( ) ; 
         } 
 
         i f   ( d a t a . t y p e   = = =   ' e r r o r ' )   { 
             / /   L o g   p a r c e l   e r r o r s   t o   c o n s o l e 
             f o r   ( l e t   a n s i D i a g n o s t i c   o f   d a t a . d i a g n o s t i c s . a n s i )   { 
                 l e t   s t a c k   =   a n s i D i a g n o s t i c . c o d e f r a m e   ?   a n s i D i a g n o s t i c . c o d e f r a m e   :   a n s i D i a g n o s t i c . s t a c k ; 
                 c o n s o l e . e r r o r ( ' =ب�  [ p a r c e l ] :   '   +   a n s i D i a g n o s t i c . m e s s a g e   +   ' \ n '   +   s t a c k   +   ' \ n \ n '   +   a n s i D i a g n o s t i c . h i n t s . j o i n ( ' \ n ' ) ) ; 
             } 
 
             i f   ( t y p e o f   d o c u m e n t   ! = =   ' u n d e f i n e d ' )   { 
                 / /   R e n d e r   t h e   f a n c y   h t m l   o v e r l a y 
                 r e m o v e E r r o r O v e r l a y ( ) ; 
                 v a r   o v e r l a y   =   c r e a t e E r r o r O v e r l a y ( d a t a . d i a g n o s t i c s . h t m l ) ;   / /   $ F l o w F i x M e 
 
                 d o c u m e n t . b o d y . a p p e n d C h i l d ( o v e r l a y ) ; 
             } 
         } 
     } ; 
 
     w s . o n e r r o r   =   f u n c t i o n   ( e )   { 
         c o n s o l e . e r r o r ( e . m e s s a g e ) ; 
     } ; 
 
     w s . o n c l o s e   =   f u n c t i o n   ( )   { 
         c o n s o l e . w a r n ( ' [ p a r c e l ]   =ب�  C o n n e c t i o n   t o   t h e   H M R   s e r v e r   w a s   l o s t ' ) ; 
     } ; 
 } 
 
 f u n c t i o n   r e m o v e E r r o r O v e r l a y ( )   { 
     v a r   o v e r l a y   =   d o c u m e n t . g e t E l e m e n t B y I d ( O V E R L A Y _ I D ) ; 
 
     i f   ( o v e r l a y )   { 
         o v e r l a y . r e m o v e ( ) ; 
         c o n s o l e . l o g ( ' [ p a r c e l ]   ('  E r r o r   r e s o l v e d ' ) ; 
     } 
 } 
 
 f u n c t i o n   c r e a t e E r r o r O v e r l a y ( d i a g n o s t i c s )   { 
     v a r   o v e r l a y   =   d o c u m e n t . c r e a t e E l e m e n t ( ' d i v ' ) ; 
     o v e r l a y . i d   =   O V E R L A Y _ I D ; 
     l e t   e r r o r H T M L   =   ' < d i v   s t y l e = " b a c k g r o u n d :   b l a c k ;   o p a c i t y :   0 . 8 5 ;   f o n t - s i z e :   1 6 p x ;   c o l o r :   w h i t e ;   p o s i t i o n :   f i x e d ;   h e i g h t :   1 0 0 % ;   w i d t h :   1 0 0 % ;   t o p :   0 p x ;   l e f t :   0 p x ;   p a d d i n g :   3 0 p x ;   f o n t - f a m i l y :   M e n l o ,   C o n s o l a s ,   m o n o s p a c e ;   z - i n d e x :   9 9 9 9 ; " > ' ; 
 
     f o r   ( l e t   d i a g n o s t i c   o f   d i a g n o s t i c s )   { 
         l e t   s t a c k   =   d i a g n o s t i c . f r a m e s . l e n g t h   ?   d i a g n o s t i c . f r a m e s . r e d u c e ( ( p ,   f r a m e )   = >   { 
             r e t u r n   ` $ { p } 
 < a   h r e f = " / _ _ p a r c e l _ l a u n c h _ e d i t o r ? f i l e = $ { e n c o d e U R I C o m p o n e n t ( f r a m e . l o c a t i o n ) } "   s t y l e = " t e x t - d e c o r a t i o n :   u n d e r l i n e ;   c o l o r :   # 8 8 8 "   o n c l i c k = " f e t c h ( t h i s . h r e f ) ;   r e t u r n   f a l s e " > $ { f r a m e . l o c a t i o n } < / a > 
 $ { f r a m e . c o d e } ` ; 
         } ,   ' ' )   :   d i a g n o s t i c . s t a c k ; 
         e r r o r H T M L   + =   ` 
             < d i v > 
                 < d i v   s t y l e = " f o n t - s i z e :   1 8 p x ;   f o n t - w e i g h t :   b o l d ;   m a r g i n - t o p :   2 0 p x ; " > 
                     =ب�  $ { d i a g n o s t i c . m e s s a g e } 
                 < / d i v > 
                 < p r e > $ { s t a c k } < / p r e > 
                 < d i v > 
                     $ { d i a g n o s t i c . h i n t s . m a p ( h i n t   = >   ' < d i v > =ء�  '   +   h i n t   +   ' < / d i v > ' ) . j o i n ( ' ' ) } 
                 < / d i v > 
                 $ { d i a g n o s t i c . d o c u m e n t a t i o n   ?   ` < d i v > =���  < a   s t y l e = " c o l o r :   v i o l e t "   h r e f = " $ { d i a g n o s t i c . d o c u m e n t a t i o n } "   t a r g e t = " _ b l a n k " > L e a r n   m o r e < / a > < / d i v > `   :   ' ' } 
             < / d i v > 
         ` ; 
     } 
 
     e r r o r H T M L   + =   ' < / d i v > ' ; 
     o v e r l a y . i n n e r H T M L   =   e r r o r H T M L ; 
     r e t u r n   o v e r l a y ; 
 } 
 
 f u n c t i o n   f u l l R e l o a d ( )   { 
     i f   ( ' r e l o a d '   i n   l o c a t i o n )   { 
         l o c a t i o n . r e l o a d ( ) ; 
     }   e l s e   i f   ( e x t C t x   & &   e x t C t x . r u n t i m e   & &   e x t C t x . r u n t i m e . r e l o a d )   { 
         e x t C t x . r u n t i m e . r e l o a d ( ) ; 
     } 
 } 
 
 f u n c t i o n   g e t P a r e n t s ( b u n d l e ,   i d ) 
 / * :   A r r a y < [ P a r c e l R e q u i r e ,   s t r i n g ] >   * / 
 { 
     v a r   m o d u l e s   =   b u n d l e . m o d u l e s ; 
 
     i f   ( ! m o d u l e s )   { 
         r e t u r n   [ ] ; 
     } 
 
     v a r   p a r e n t s   =   [ ] ; 
     v a r   k ,   d ,   d e p ; 
 
     f o r   ( k   i n   m o d u l e s )   { 
         f o r   ( d   i n   m o d u l e s [ k ] [ 1 ] )   { 
             d e p   =   m o d u l e s [ k ] [ 1 ] [ d ] ; 
 
             i f   ( d e p   = = =   i d   | |   A r r a y . i s A r r a y ( d e p )   & &   d e p [ d e p . l e n g t h   -   1 ]   = = =   i d )   { 
                 p a r e n t s . p u s h ( [ b u n d l e ,   k ] ) ; 
             } 
         } 
     } 
 
     i f   ( b u n d l e . p a r e n t )   { 
         p a r e n t s   =   p a r e n t s . c o n c a t ( g e t P a r e n t s ( b u n d l e . p a r e n t ,   i d ) ) ; 
     } 
 
     r e t u r n   p a r e n t s ; 
 } 
 
 f u n c t i o n   u p d a t e L i n k ( l i n k )   { 
     v a r   n e w L i n k   =   l i n k . c l o n e N o d e ( ) ; 
 
     n e w L i n k . o n l o a d   =   f u n c t i o n   ( )   { 
         i f   ( l i n k . p a r e n t N o d e   ! = =   n u l l )   { 
             / /   $ F l o w F i x M e 
             l i n k . p a r e n t N o d e . r e m o v e C h i l d ( l i n k ) ; 
         } 
     } ; 
 
     n e w L i n k . s e t A t t r i b u t e ( ' h r e f ' ,   / /   $ F l o w F i x M e 
     l i n k . g e t A t t r i b u t e ( ' h r e f ' ) . s p l i t ( ' ? ' ) [ 0 ]   +   ' ? '   +   D a t e . n o w ( ) ) ;   / /   $ F l o w F i x M e 
 
     l i n k . p a r e n t N o d e . i n s e r t B e f o r e ( n e w L i n k ,   l i n k . n e x t S i b l i n g ) ; 
 } 
 
 v a r   c s s T i m e o u t   =   n u l l ; 
 
 f u n c t i o n   r e l o a d C S S ( )   { 
     i f   ( c s s T i m e o u t )   { 
         r e t u r n ; 
     } 
 
     c s s T i m e o u t   =   s e t T i m e o u t ( f u n c t i o n   ( )   { 
         v a r   l i n k s   =   d o c u m e n t . q u e r y S e l e c t o r A l l ( ' l i n k [ r e l = " s t y l e s h e e t " ] ' ) ; 
 
         f o r   ( v a r   i   =   0 ;   i   <   l i n k s . l e n g t h ;   i + + )   { 
             / /   $ F l o w F i x M e [ i n c o m p a t i b l e - t y p e ] 
             v a r   h r e f 
             / * :   s t r i n g   * / 
             =   l i n k s [ i ] . g e t A t t r i b u t e ( ' h r e f ' ) ; 
             v a r   h o s t n a m e   =   g e t H o s t n a m e ( ) ; 
             v a r   s e r v e d F r o m H M R S e r v e r   =   h o s t n a m e   = = =   ' l o c a l h o s t '   ?   n e w   R e g E x p ( ' ^ ( h t t p s ? : \ \ / \ \ / ( 0 . 0 . 0 . 0 | 1 2 7 . 0 . 0 . 1 ) | l o c a l h o s t ) : '   +   g e t P o r t ( ) ) . t e s t ( h r e f )   :   h r e f . i n d e x O f ( h o s t n a m e   +   ' : '   +   g e t P o r t ( ) ) ; 
             v a r   a b s o l u t e   =   / ^ h t t p s ? : \ / \ / / i . t e s t ( h r e f )   & &   h r e f . i n d e x O f ( l o c a t i o n . o r i g i n )   ! = =   0   & &   ! s e r v e d F r o m H M R S e r v e r ; 
 
             i f   ( ! a b s o l u t e )   { 
                 u p d a t e L i n k ( l i n k s [ i ] ) ; 
             } 
         } 
 
         c s s T i m e o u t   =   n u l l ; 
     } ,   5 0 ) ; 
 } 
 
 f u n c t i o n   h m r D o w n l o a d ( a s s e t )   { 
     i f   ( a s s e t . t y p e   = = =   ' j s ' )   { 
         i f   ( t y p e o f   d o c u m e n t   ! = =   ' u n d e f i n e d ' )   { 
             l e t   s c r i p t   =   d o c u m e n t . c r e a t e E l e m e n t ( ' s c r i p t ' ) ; 
             s c r i p t . s r c   =   a s s e t . u r l   +   ' ? t = '   +   D a t e . n o w ( ) ; 
 
             i f   ( a s s e t . o u t p u t F o r m a t   = = =   ' e s m o d u l e ' )   { 
                 s c r i p t . t y p e   =   ' m o d u l e ' ; 
             } 
 
             r e t u r n   n e w   P r o m i s e ( ( r e s o l v e ,   r e j e c t )   = >   { 
                 v a r   _ d o c u m e n t $ h e a d ; 
 
                 s c r i p t . o n l o a d   =   ( )   = >   r e s o l v e ( s c r i p t ) ; 
 
                 s c r i p t . o n e r r o r   =   r e j e c t ; 
                 ( _ d o c u m e n t $ h e a d   =   d o c u m e n t . h e a d )   = = =   n u l l   | |   _ d o c u m e n t $ h e a d   = = =   v o i d   0   ?   v o i d   0   :   _ d o c u m e n t $ h e a d . a p p e n d C h i l d ( s c r i p t ) ; 
             } ) ; 
         }   e l s e   i f   ( t y p e o f   i m p o r t S c r i p t s   = = =   ' f u n c t i o n ' )   { 
             / /   W o r k e r   s c r i p t s 
             i f   ( a s s e t . o u t p u t F o r m a t   = = =   ' e s m o d u l e ' )   { 
                 r e t u r n   _ _ p a r c e l _ _ i m p o r t _ _ ( a s s e t . u r l   +   ' ? t = '   +   D a t e . n o w ( ) ) ; 
             }   e l s e   { 
                 r e t u r n   n e w   P r o m i s e ( ( r e s o l v e ,   r e j e c t )   = >   { 
                     t r y   { 
                         _ _ p a r c e l _ _ i m p o r t S c r i p t s _ _ ( a s s e t . u r l   +   ' ? t = '   +   D a t e . n o w ( ) ) ; 
 
                         r e s o l v e ( ) ; 
                     }   c a t c h   ( e r r )   { 
                         r e j e c t ( e r r ) ; 
                     } 
                 } ) ; 
             } 
         } 
     } 
 } 
 
 a s y n c   f u n c t i o n   h m r A p p l y U p d a t e s ( a s s e t s )   { 
     g l o b a l . p a r c e l H o t U p d a t e   =   O b j e c t . c r e a t e ( n u l l ) ; 
     l e t   s c r i p t s T o R e m o v e ; 
 
     t r y   { 
         / /   I f   s o u r c e U R L   c o m m e n t s   a r e n ' t   s u p p o r t e d   i n   e v a l ,   w e   n e e d   t o   l o a d 
         / /   t h e   u p d a t e   f r o m   t h e   d e v   s e r v e r   o v e r   H T T P   s o   t h a t   s t a c k   t r a c e s 
         / /   a r e   c o r r e c t   i n   e r r o r s / l o g s .   T h i s   i s   m u c h   s l o w e r   t h a n   e v a l ,   s o 
         / /   w e   o n l y   d o   i t   i f   n e e d e d   ( c u r r e n t l y   j u s t   S a f a r i ) . 
         / /   h t t p s : / / b u g s . w e b k i t . o r g / s h o w _ b u g . c g i ? i d = 1 3 7 2 9 7 
         / /   T h i s   p a t h   i s   a l s o   t a k e n   i f   a   C S P   d i s a l l o w s   e v a l . 
         i f   ( ! s u p p o r t s S o u r c e U R L )   { 
             l e t   p r o m i s e s   =   a s s e t s . m a p ( a s s e t   = >   { 
                 v a r   _ h m r D o w n l o a d ; 
 
                 r e t u r n   ( _ h m r D o w n l o a d   =   h m r D o w n l o a d ( a s s e t ) )   = = =   n u l l   | |   _ h m r D o w n l o a d   = = =   v o i d   0   ?   v o i d   0   :   _ h m r D o w n l o a d . c a t c h ( e r r   = >   { 
                     / /   W e b   e x t e n s i o n   b u g f i x   f o r   C h r o m i u m 
                     / /   h t t p s : / / b u g s . c h r o m i u m . o r g / p / c h r o m i u m / i s s u e s / d e t a i l ? i d = 1 2 5 5 4 1 2 # c 1 2 
                     i f   ( e x t C t x   & &   e x t C t x . r u n t i m e   & &   e x t C t x . r u n t i m e . g e t M a n i f e s t ( ) . m a n i f e s t _ v e r s i o n   = =   3 )   { 
                         i f   ( t y p e o f   S e r v i c e W o r k e r G l o b a l S c o p e   ! =   ' u n d e f i n e d '   & &   g l o b a l   i n s t a n c e o f   S e r v i c e W o r k e r G l o b a l S c o p e )   { 
                             e x t C t x . r u n t i m e . r e l o a d ( ) ; 
                             r e t u r n ; 
                         } 
 
                         a s s e t . u r l   =   e x t C t x . r u n t i m e . g e t U R L ( ' / _ _ p a r c e l _ h m r _ p r o x y _ _ ? u r l = '   +   e n c o d e U R I C o m p o n e n t ( a s s e t . u r l   +   ' ? t = '   +   D a t e . n o w ( ) ) ) ; 
                         r e t u r n   h m r D o w n l o a d ( a s s e t ) ; 
                     } 
 
                     t h r o w   e r r ; 
                 } ) ; 
             } ) ; 
             s c r i p t s T o R e m o v e   =   a w a i t   P r o m i s e . a l l ( p r o m i s e s ) ; 
         } 
 
         a s s e t s . f o r E a c h ( f u n c t i o n   ( a s s e t )   { 
             h m r A p p l y ( m o d u l e . b u n d l e . r o o t ,   a s s e t ) ; 
         } ) ; 
     }   f i n a l l y   { 
         d e l e t e   g l o b a l . p a r c e l H o t U p d a t e ; 
 
         i f   ( s c r i p t s T o R e m o v e )   { 
             s c r i p t s T o R e m o v e . f o r E a c h ( s c r i p t   = >   { 
                 i f   ( s c r i p t )   { 
                     v a r   _ d o c u m e n t $ h e a d 2 ; 
 
                     ( _ d o c u m e n t $ h e a d 2   =   d o c u m e n t . h e a d )   = = =   n u l l   | |   _ d o c u m e n t $ h e a d 2   = = =   v o i d   0   ?   v o i d   0   :   _ d o c u m e n t $ h e a d 2 . r e m o v e C h i l d ( s c r i p t ) ; 
                 } 
             } ) ; 
         } 
     } 
 } 
 
 f u n c t i o n   h m r A p p l y ( b u n d l e 
 / * :   P a r c e l R e q u i r e   * / 
 ,   a s s e t 
 / * :     H M R A s s e t   * / 
 )   { 
     v a r   m o d u l e s   =   b u n d l e . m o d u l e s ; 
 
     i f   ( ! m o d u l e s )   { 
         r e t u r n ; 
     } 
 
     i f   ( a s s e t . t y p e   = = =   ' c s s ' )   { 
         r e l o a d C S S ( ) ; 
     }   e l s e   i f   ( a s s e t . t y p e   = = =   ' j s ' )   { 
         l e t   d e p s   =   a s s e t . d e p s B y B u n d l e [ b u n d l e . H M R _ B U N D L E _ I D ] ; 
 
         i f   ( d e p s )   { 
             i f   ( m o d u l e s [ a s s e t . i d ] )   { 
                 / /   R e m o v e   d e p e n d e n c i e s   t h a t   a r e   r e m o v e d   a n d   w i l l   b e c o m e   o r p h a n e d . 
                 / /   T h i s   i s   n e c e s s a r y   s o   t h a t   i f   t h e   a s s e t   i s   a d d e d   b a c k   a g a i n ,   t h e   c a c h e   i s   g o n e ,   a n d   w e   p r e v e n t   a   f u l l   p a g e   r e l o a d . 
                 l e t   o l d D e p s   =   m o d u l e s [ a s s e t . i d ] [ 1 ] ; 
 
                 f o r   ( l e t   d e p   i n   o l d D e p s )   { 
                     i f   ( ! d e p s [ d e p ]   | |   d e p s [ d e p ]   ! = =   o l d D e p s [ d e p ] )   { 
                         l e t   i d   =   o l d D e p s [ d e p ] ; 
                         l e t   p a r e n t s   =   g e t P a r e n t s ( m o d u l e . b u n d l e . r o o t ,   i d ) ; 
 
                         i f   ( p a r e n t s . l e n g t h   = = =   1 )   { 
                             h m r D e l e t e ( m o d u l e . b u n d l e . r o o t ,   i d ) ; 
                         } 
                     } 
                 } 
             } 
 
             i f   ( s u p p o r t s S o u r c e U R L )   { 
                 / /   G l o b a l   e v a l .   W e   w o u l d   u s e   ` n e w   F u n c t i o n `   h e r e   b u t   b r o w s e r 
                 / /   s u p p o r t   f o r   s o u r c e   m a p s   i s   b e t t e r   w i t h   e v a l . 
                 ( 0 ,   e v a l ) ( a s s e t . o u t p u t ) ; 
             }   / /   $ F l o w F i x M e 
 
 
             l e t   f n   =   g l o b a l . p a r c e l H o t U p d a t e [ a s s e t . i d ] ; 
             m o d u l e s [ a s s e t . i d ]   =   [ f n ,   d e p s ] ; 
         }   e l s e   i f   ( b u n d l e . p a r e n t )   { 
             h m r A p p l y ( b u n d l e . p a r e n t ,   a s s e t ) ; 
         } 
     } 
 } 
 
 f u n c t i o n   h m r D e l e t e ( b u n d l e ,   i d )   { 
     l e t   m o d u l e s   =   b u n d l e . m o d u l e s ; 
 
     i f   ( ! m o d u l e s )   { 
         r e t u r n ; 
     } 
 
     i f   ( m o d u l e s [ i d ] )   { 
         / /   C o l l e c t   d e p e n d e n c i e s   t h a t   w i l l   b e c o m e   o r p h a n e d   w h e n   t h i s   m o d u l e   i s   d e l e t e d . 
         l e t   d e p s   =   m o d u l e s [ i d ] [ 1 ] ; 
         l e t   o r p h a n s   =   [ ] ; 
 
         f o r   ( l e t   d e p   i n   d e p s )   { 
             l e t   p a r e n t s   =   g e t P a r e n t s ( m o d u l e . b u n d l e . r o o t ,   d e p s [ d e p ] ) ; 
 
             i f   ( p a r e n t s . l e n g t h   = = =   1 )   { 
                 o r p h a n s . p u s h ( d e p s [ d e p ] ) ; 
             } 
         }   / /   D e l e t e   t h e   m o d u l e .   T h i s   m u s t   b e   d o n e   b e f o r e   d e l e t i n g   d e p e n d e n c i e s   i n   c a s e   o f   c i r c u l a r   d e p e n d e n c i e s . 
 
 
         d e l e t e   m o d u l e s [ i d ] ; 
         d e l e t e   b u n d l e . c a c h e [ i d ] ;   / /   N o w   d e l e t e   t h e   o r p h a n s . 
 
         o r p h a n s . f o r E a c h ( i d   = >   { 
             h m r D e l e t e ( m o d u l e . b u n d l e . r o o t ,   i d ) ; 
         } ) ; 
     }   e l s e   i f   ( b u n d l e . p a r e n t )   { 
         h m r D e l e t e ( b u n d l e . p a r e n t ,   i d ) ; 
     } 
 } 
 
 f u n c t i o n   h m r A c c e p t C h e c k ( b u n d l e 
 / * :   P a r c e l R e q u i r e   * / 
 ,   i d 
 / * :   s t r i n g   * / 
 ,   d e p s B y B u n d l e 
 / * :   ? {   [ s t r i n g ] :   {   [ s t r i n g ] :   s t r i n g   }   } * / 
 )   { 
     i f   ( h m r A c c e p t C h e c k O n e ( b u n d l e ,   i d ,   d e p s B y B u n d l e ) )   { 
         r e t u r n   t r u e ; 
     }   / /   T r a v e r s e   p a r e n t s   b r e a d t h   f i r s t .   A l l   p o s s i b l e   a n c e s t r i e s   m u s t   a c c e p t   t h e   H M R   u p d a t e ,   o r   w e ' l l   r e l o a d . 
 
 
     l e t   p a r e n t s   =   g e t P a r e n t s ( m o d u l e . b u n d l e . r o o t ,   i d ) ; 
     l e t   a c c e p t e d   =   f a l s e ; 
 
     w h i l e   ( p a r e n t s . l e n g t h   >   0 )   { 
         l e t   v   =   p a r e n t s . s h i f t ( ) ; 
         l e t   a   =   h m r A c c e p t C h e c k O n e ( v [ 0 ] ,   v [ 1 ] ,   n u l l ) ; 
 
         i f   ( a )   { 
             / /   I f   t h i s   p a r e n t   a c c e p t s ,   s t o p   t r a v e r s i n g   u p w a r d ,   b u t   s t i l l   c o n s i d e r   s i b l i n g s . 
             a c c e p t e d   =   t r u e ; 
         }   e l s e   { 
             / /   O t h e r w i s e ,   q u e u e   t h e   p a r e n t s   i n   t h e   n e x t   l e v e l   u p w a r d . 
             l e t   p   =   g e t P a r e n t s ( m o d u l e . b u n d l e . r o o t ,   v [ 1 ] ) ; 
 
             i f   ( p . l e n g t h   = = =   0 )   { 
                 / /   I f   t h e r e   a r e   n o   p a r e n t s ,   t h e n   w e ' v e   r e a c h e d   a n   e n t r y   w i t h o u t   a c c e p t i n g .   R e l o a d . 
                 a c c e p t e d   =   f a l s e ; 
                 b r e a k ; 
             } 
 
             p a r e n t s . p u s h ( . . . p ) ; 
         } 
     } 
 
     r e t u r n   a c c e p t e d ; 
 } 
 
 f u n c t i o n   h m r A c c e p t C h e c k O n e ( b u n d l e 
 / * :   P a r c e l R e q u i r e   * / 
 ,   i d 
 / * :   s t r i n g   * / 
 ,   d e p s B y B u n d l e 
 / * :   ? {   [ s t r i n g ] :   {   [ s t r i n g ] :   s t r i n g   }   } * / 
 )   { 
     v a r   m o d u l e s   =   b u n d l e . m o d u l e s ; 
 
     i f   ( ! m o d u l e s )   { 
         r e t u r n ; 
     } 
 
     i f   ( d e p s B y B u n d l e   & &   ! d e p s B y B u n d l e [ b u n d l e . H M R _ B U N D L E _ I D ] )   { 
         / /   I f   w e   r e a c h e d   t h e   r o o t   b u n d l e   w i t h o u t   f i n d i n g   w h e r e   t h e   a s s e t   s h o u l d   g o , 
         / /   t h e r e ' s   n o t h i n g   t o   d o .   M a r k   a s   " a c c e p t e d "   s o   w e   d o n ' t   r e l o a d   t h e   p a g e . 
         i f   ( ! b u n d l e . p a r e n t )   { 
             r e t u r n   t r u e ; 
         } 
 
         r e t u r n   h m r A c c e p t C h e c k ( b u n d l e . p a r e n t ,   i d ,   d e p s B y B u n d l e ) ; 
     } 
 
     i f   ( c h e c k e d A s s e t s [ i d ] )   { 
         r e t u r n   t r u e ; 
     } 
 
     c h e c k e d A s s e t s [ i d ]   =   t r u e ; 
     v a r   c a c h e d   =   b u n d l e . c a c h e [ i d ] ; 
     a s s e t s T o A c c e p t . p u s h ( [ b u n d l e ,   i d ] ) ; 
 
     i f   ( ! c a c h e d   | |   c a c h e d . h o t   & &   c a c h e d . h o t . _ a c c e p t C a l l b a c k s . l e n g t h )   { 
         r e t u r n   t r u e ; 
     } 
 } 
 
 f u n c t i o n   h m r A c c e p t R u n ( b u n d l e 
 / * :   P a r c e l R e q u i r e   * / 
 ,   i d 
 / * :   s t r i n g   * / 
 )   { 
     v a r   c a c h e d   =   b u n d l e . c a c h e [ i d ] ; 
     b u n d l e . h o t D a t a   =   { } ; 
 
     i f   ( c a c h e d   & &   c a c h e d . h o t )   { 
         c a c h e d . h o t . d a t a   =   b u n d l e . h o t D a t a ; 
     } 
 
     i f   ( c a c h e d   & &   c a c h e d . h o t   & &   c a c h e d . h o t . _ d i s p o s e C a l l b a c k s . l e n g t h )   { 
         c a c h e d . h o t . _ d i s p o s e C a l l b a c k s . f o r E a c h ( f u n c t i o n   ( c b )   { 
             c b ( b u n d l e . h o t D a t a ) ; 
         } ) ; 
     } 
 
     d e l e t e   b u n d l e . c a c h e [ i d ] ; 
     b u n d l e ( i d ) ; 
     c a c h e d   =   b u n d l e . c a c h e [ i d ] ; 
 
     i f   ( c a c h e d   & &   c a c h e d . h o t   & &   c a c h e d . h o t . _ a c c e p t C a l l b a c k s . l e n g t h )   { 
         c a c h e d . h o t . _ a c c e p t C a l l b a c k s . f o r E a c h ( f u n c t i o n   ( c b )   { 
             v a r   a s s e t s T o A l s o A c c e p t   =   c b ( f u n c t i o n   ( )   { 
                 r e t u r n   g e t P a r e n t s ( m o d u l e . b u n d l e . r o o t ,   i d ) ; 
             } ) ; 
 
             i f   ( a s s e t s T o A l s o A c c e p t   & &   a s s e t s T o A c c e p t . l e n g t h )   { 
                 / /   $ F l o w F i x M e [ m e t h o d - u n b i n d i n g ] 
                 a s s e t s T o A c c e p t . p u s h . a p p l y ( a s s e t s T o A c c e p t ,   a s s e t s T o A l s o A c c e p t ) ; 
             } 
         } ) ; 
     } 
 
     a c c e p t e d A s s e t s [ i d ]   =   t r u e ; 
 } "filePath c�n o d e _ m o d u l e s / @ p a r c e l / r u n t i m e - b r o w s e r - h m r / l i b / r u n t i m e - 4 9 2 1 a b f 2 c d 8 d 7 f 7 4 . j s "envo"id"d6ea1d42532a7575"context cb r o w s e r ce n g i n e s o"browsersaI "last 1 Chrome versionI"last 1 Safari versionI"last 1 Firefox versionI"last 1 Edge version@{"includeNodeModulesT"outputFormat"global"
sourceType"module"	isLibraryF"shouldOptimizeF"shouldScopeHoistF"	sourceMapo{ "loc_{"isSourceT{"usedSymbolsDownDirtyT"correspondingRequest"b5673e4dc7b08597{Io"id"ffb2af2114cbef84"type"asset"valueo"id"ffb2af2114cbef84"	committedT"hash"4921abf2cd8d7f74"filePath c�n o d e _ m o d u l e s / @ p a r c e l / r u n t i m e - b r o w s e r - h m r / l i b / r u n t i m e - 4 9 2 1 a b f 2 c d 8 d 7 f 7 4 . j s "query_"bundleBehavior0"isBundleSplittableT"type"js"
contentKey"113d08e795777f48"mapKey"9d14c9e325c9745c"astKey0"astGenerator0cd e p e n d e n c i e s ;: "isSourceT"
outputHash"999358650a54c178"pipeline_"envo"id"d6ea1d42532a7575"contextcb r o w s e r ce n g i n e s ^"includeNodeModulesT"outputFormat"global"
sourceType"module"	isLibraryF"shouldOptimizeF"shouldScopeHoistF"	sourceMap^
"loc_{"metao"id"ffb2af2114cbef84{"statso"timeN      C@"sizeI��{"symbols;: "sideEffectsT"	uniqueKey" "plugin_"
configPath_"configKeyPath_"isLargeBlobF{"usedSymbols', "usedSymbolsDownDirtyT"usedSymbolsUpDirtyT{:"adjacencyListo"nodes\�                     #                                                 #       #                                 #   +   #   +          +       +                                                                                                                                                                                                                                                                               "edges\�                                                                 +   #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {"
rootNodeIdI "_contentKeyToNodeId;"@@rootI "c02bba634ab61fc6I"ffb2af2114cbef84I:"_nodeIdToContentKey;I "@@rootI"c02bba634ab61fc6I"ffb2af2114cbef84:"hash0"symbolPropagationRanF{{"changedAssets;: "assetRequestsA $  {