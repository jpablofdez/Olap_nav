<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

DWs
<br>
DW Analytics Page

<br>

<div>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://s3.amazonaws.com/flexmonster/2.3/flexmonster.js"></script>


    <button onclick="refreshData()">Refresh</button>
    <button onclick="changeTheme()">Theme</button>
    <a download="orbpivotgrid.xls" href="#" onclick="return exportToExcel(this);">Export to Excel</a>
    
    <div id="rr" style="padding: 7px;"></div>
    <div id="export" style="padding: 7px;"></div>

    <script type="text/javascript">

    function refreshData() {
        pgridwidget.refreshData(window.demo.data);
    }

    function changeTheme() {
        pgridwidget.changeTheme('bootstrap');
    }

    function exportToExcel(anchor) {
        anchor.href = orb.export(pgridwidget);
        return true;
    }

    var config = {
        dataSource: window.demo.data,
        canMoveFields: true, 
        dataHeadersLocation: 'columns',
        width: 1099,
        height: 611,
        theme: 'green',
        toolbar: {
            visible: true
        },
        grandTotal: {
            rowsvisible: false,
            columnsvisible: false
        },
        subTotal: {
            visible: true,
            collapsed: true,
            collapsible: true
        },
        rowSettings: {
            subTotal: {
                visible: true,
                collapsed: true,
                collapsible: true
            }
        },
        columnSettings: {
            subTotal: {
                visible: false,
                collapsed: true,
                collapsible: true
            }
        },
        fields: [
            {
                name: '6',
                caption: 'Amount',
                dataSettings: {
                    aggregateFunc: 'sum',
                    aggregateFuncName: 'whatever',
                    formatFunc: function(value) {
                        return value ? Number(value).toFixed(0) + ' $' : '';
                    }
                }
            },
            {
                name: '0',
                caption: 'Entity'
            },
            {
                name: '1',
                caption: 'Product',
            },
            {
                name: '2',
                caption: 'Manufacturer',
                sort: {
                    order: 'asc'
                },
                rowSettings: {
                    subTotal: {
                        visible: false,
                        collapsed: true,
                        collapsible: true
                    }
                },
            },
            {
                name: '3',
                caption: 'Class'
            },
            {
                name: '4',
                caption: 'Category',
                sort: {
                    order: 'desc'
                }
            },
            {
                name: '5',
                caption: 'Quantity',
                aggregateFunc: 'sum'
            }
        ],
        rows    : [ 'Manufacturer'],//, 'Category' ],
        columns : [ 'Class', 'Category' ],
        data    : [ 'Quantity', 'Amount' ],
        /*preFilters : {
            'Class': { 'Matches': 'Regular' },
            'Manufacturer': { 'Matches': /^a|^c/ },
            'Category'    : { 'Does Not Match': 'D' },
           // 'Amount'      : { '>':  40 },
         //   'Quantity'    : [4, 8, 12]
        }*/
    };

    var elem = document.getElementById('rr')

    var pgridwidget = new orb.pgridwidget(config);
    pgridwidget.render(elem);

    </script>


</div>