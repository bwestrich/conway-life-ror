# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

    <g:javascript library="jquery" />
    <style>
    .row { margin: 0; padding: 0; border:1px solid black; height: 5px; }
    span { display: inline-block; width: 5px; }
    .dead { background-color: white; color: white; }
    .alive { background-color:  green; color: white }

    </style>
    <script>
        function updateBoard(response) {
            var board = response;
            var b = $('#board');
            var p = b.parent();

            b.remove();
            b = document.createElement("div");
            b.id = 'board';
            p.append(b);

            var rows = board.length;
            for (var y = 0; y < rows; y++) {
                var cols = board[y].length;
                var row = document.createElement('div')
                row.className = 'row';
                row.style.width = (cols*5)+"px";
                b.appendChild(row);
                for (var x = 0; x < cols; x++) {
                    var cell = document.createElement('span');
                    var clazz = board[y][x].alive ? 'alive' : 'dead';
                    cell.innerHTML = "&nbsp";
                    cell.className = clazz;
                    row.appendChild(cell)
                }
            }

            // Query.ajax({type:'POST',data:jQuery(this).serialize(), url:'/gameoflife/board/seed',success:function(data,textStatus){updateBoard(data);},error:function(XMLHttpRequest,textStatus,errorThrown){}});
            setTimeout("jQuery.ajax({url: '/gameoflife/board/evolve', success: function(d,t) {updateBoard(d)}})", 50);
        }
        function load() {
            alert('loaded');
        }
    </script>
