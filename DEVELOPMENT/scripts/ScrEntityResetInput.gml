/* Note to self:
 Good idea to have this at the end of all movement code
 Good idea to use in conjunction with  IsOwner() .
 */

pressRight = 0;
pressLeft = 0;
pressUp = 0;
pressDown = 0;
pressJump = 0;
pressedJump = 0;

for (var i = 0; i < global.shootKeys; i++)
    {
    shootPress[i] = false;
    }
