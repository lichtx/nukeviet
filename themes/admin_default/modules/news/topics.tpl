<!-- BEGIN: main -->
<div id="module_show_list">
	{TOPIC_LIST}
</div>
<br />
<a id="edit"></a>
<!-- BEGIN: error -->
    <div class="quote" style="width:780px;">
    <blockquote class="error"><span>{ERROR}</span></blockquote>
    </div>
    <div class="clear"></div>
<!-- END: error -->
<form action="{NV_BASE_ADMINURL}index.php" method="post">
	<input type="hidden" name ="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
	<input type="hidden" name ="{NV_OP_VARIABLE}" value="{OP}" />
	<input type="hidden" name ="topicid" value="{DATA.topicid}" />
	<input name="savecat" type="hidden" value="1" />
	<table summary="" class="tab1">
		<caption>{LANG.add_topic}</caption>
		<tbody>
			<tr>
				<td align="right"><strong>{LANG.name}: </strong></td>
				<td><input style="width: 650px" name="title" id="idtitle" type="text" value="{DATA.title}" maxlength="255" /></td>
			</tr>
			<tr>
				<td valign="top" align="right"  width="100"><strong>{LANG.alias}: </strong></td>
				<td><input style="width: 600px" name="alias" id="idalias" type="text" value="{DATA.alias}" maxlength="255" />
				<img src="{NV_BASE_SITEURL}images/refresh.png" width="16" style="cursor: pointer; vertical-align: middle;" onclick="get_alias('topics', {DATA.topicid});" alt="" height="16" />
			</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td align="right"><strong>{LANG.keywords}: </strong></td>
				<td><input style="width: 650px" name="keywords" type="text" value="{DATA.keywords}" maxlength="255" /></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td valign="top" align="right"  width="100"><br /><strong>{LANG.description}</strong></td>
				<td>
				<textarea style="width: 650px" name="description" cols="100" rows="5">{DATA.description}</textarea>
				</td>
			</tr>
		</tbody>
	</table>
	<br /><center><input name="submit1" type="submit" value="{LANG.save}" /></center>
</form>
<!-- BEGIN: getalias -->
<script type="text/javascript">
$("#idtitle").change(function () 
{
    get_alias( "topics" , {DATA.topicid});
});
</script>
<!-- END: getalias -->
<!-- END: main -->