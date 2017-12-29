<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 


<script type="text/javascript">
$(function(){
    var renderers = $.extend(
        $.pivotUtilities.renderers,
        $.pivotUtilities.c3_renderers,
        $.pivotUtilities.d3_renderers,
        $.pivotUtilities.export_renderers
        );

    var parseAndPivot = function(f) {
        $("#output").html("<p align='center' style='color:grey;'>(processing...)</p>")
        Papa.parse(f, {
            skipEmptyLines: true,
            error: function(e){ alert(e) },
            complete: function(parsed){
                $("#output").pivotUI(parsed.data, { renderers: renderers }, true);
            }
        });
    };

    $("#csv").bind("change", function(event){
        parseAndPivot(event.target.files[0]);
    });

    $("#textarea").bind("input change", function(){
        parseAndPivot($("#textarea").val());
    });

    var dragging = function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        evt.originalEvent.dataTransfer.dropEffect = 'copy';
        $("body").removeClass("whiteborder").addClass("greyborder");
    };

    var endDrag = function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        evt.originalEvent.dataTransfer.dropEffect = 'copy';
        $("body").removeClass("greyborder").addClass("whiteborder");
    };

    var dropped = function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        $("body").removeClass("greyborder").addClass("whiteborder");
        parseAndPivot(evt.originalEvent.dataTransfer.files[0]);
    };

    $("html")
        .on("dragover", dragging)
        .on("dragend", endDrag)
        .on("dragexit", endDrag)
        .on("dragleave", endDrag)
        .on("drop", dropped);
 });
</script>


<H4>Home Page</H4>
 <p><a href="index.html">&laquo; back to PivotTable.js examples</a></p>
        <p align="center" style="line-height: 1.5">
            Drop a CSV file on this page or
            <label id="filechooser">click here to choose one<input id="csv" type="file" style="display:none"/></label>
            <br /><br />
            <textarea placeholder="or type or paste CSV text here" style="width: 300px;" id="textarea"></textarea>
            <br />
            <em><small>note: the data never leaves your browser!</small></em>
        </p>

        <div id="output" style="margin: 10px;" class="container-fluid"></div>