

function addnavi(left, right)
{
    document.addEventListener('keydown', function(event) 
    {
        if(event.keyCode == 37) 
        {
            //alert('Left was pressed');
            window.location = left;
        }
        else if(event.keyCode == 39) 
        {
            //alert('Right was pressed');
            window.location = right;
        }
    });
}
