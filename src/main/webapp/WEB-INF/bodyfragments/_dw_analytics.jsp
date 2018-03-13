<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<div class= "conteiner">

<h2>DW Analytics</h2>

<p align="center" style="line-height: 1.5">
            Drop a CSV file on this page or
            <label id="filechooser">click here to choose one<input id="csv" type="file" style="display:none"/></label>
            <br /><br />
            <textarea placeholder="or type or paste CSV text here" style="width: 300px;" id="textarea"></textarea>
            <br />
            <em><small>note: the data never leaves your browser!</small></em>
        </p>
<div style="overflow-y: scroll;">
<div id="output" style="margin: 10px;" class="container-fluid"></div>
</div>

</div>