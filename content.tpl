 
			<h2>{$content.title}</h2>
			{if $loggedin=="true"}
			{$content.body}

          	<h3><strong><font color="#336600">Movies</font></strong></h3>
            <table style="width:100%;margin-top:10px;word-wrap:break-word;table-layout:fixed;" cellpadding="0" class="data highlight">
     
                          <tr>
                    {foreach from=$get5movies item=result}
     
                      <td><a href="{$smarty.const.WWW_TOP}/../details/{$result.guid}"><img class="shadow pic" alt="{$result.title|escape:"htmlall"} Logo" src="{$smarty.const.WWW_TOP}/covers/movies/{$result.imdbID}-cover.jpg" width="120" height="170" border="0" /><br><center><strong>{$result.name}</strong></center></a></td>
     
                 
                    {/foreach}
              </tr>
     
            </table>
<br>
			<h3><strong><font color="#336600">Console</font></strong></h3>
			<table style="width:750px;margin-top:10px;word-wrap:break-word;table-layout:fixed;" cellpadding="0" class="data highlight">
     
                          <tr>
                    {foreach from=$get5console item=console}
     
                       <td><a href="{$smarty.const.WWW_TOP}/../details/{$console.guid}"><img class="shadow pic" alt="{$console.title|escape:"htmlall"} Logo" src="{$smarty.const.WWW_TOP}/covers/console/{$console.consoleinfoID}.jpg" width="120" height="170" align="center" border="0" /><br><center><strong>{$console.name}</strong></center></td>
     
                 
                    {/foreach}
              </tr>
     
            </table>
<br>
                        <h3><strong><font color="#336600">MP3 Albums</font></strong></h3>
                        <table style="width:100%;margin-top:10px;word-wrap:break-word;table-layout:fixed;" cellpadding="0" class="data highlight">

                          <tr>
                    {foreach from=$get5mp3s item=music}

         <td><a href="{$smarty.const.WWW_TOP}/../details/{$music.guid}"><img class="shadow pic" alt="{$music.title|escape:"htmlall"} Logo" src="{$smarty.const.WWW_TOP}/covers/music/{$music.musicinfoID}.jpg" width="120" height="120" border="0"/><br><center><strong>{$music.name}</strong></center></td>


                    {/foreach}
              </tr>

            </table>
<br>
                        <h3><strong><font color="#336600">Ebooks</font></strong></h3>
                        <table style="width:100%;margin-top:10px;word-wrap:break-word;table-layout:fixed;" cellpadding="0" class="data highlight">

                          <tr>
                    {foreach from=$get5books item=books}

         <td><a href="{$smarty.const.WWW_TOP}/../details/{$books.guid}"><img class="shadow pic" alt="{$books.title|escape:"htmlall"} Logo" src="{$smarty.const.WWW_TOP}/covers/book/{$books.bookinfoID}.jpg" width="120" height="193px" border="0"/><br><center><strong>{$books.name}</strong></center></td>


                    {/foreach}
              </tr>

		</table>

{/if}
