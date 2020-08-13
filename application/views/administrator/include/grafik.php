<script type="text/javascript" src="<?php echo base_url(); ?>asset/admin/plugins/jQuery/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('#container').highcharts({
            data: {
                table: 'datatable'
            },
            chart: {
                type: 'column'
            },
            title: {
                text: ''
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: ''
                }
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        'Ada ' + this.point.y + ' Orang';
                }
            }
        });
    });
</script>

    <div class="card-header">
        <h3 class="card-title">Grafik Kunjungan</h3>
    </div>

<div class="card-body chat" id="chat-card">
<div id="container" style="min-width: 310px; height: 205px; margin: 0 auto"></div>
<table id="datatable" style='display:none'>
<thead>
    <tr>
        <th></th>
        <th>Jumlah Kunjungan</th>
    </tr>
</thead>
<tbody>
    <?php 
        $grafik = $this->model_app->grafik_kunjungan();
        foreach ($grafik->result_array() as $row){
            echo "<tr>
                    <th>".tgl_grafik($row['tanggal'])."</th>
                    <td>$row[jumlah]</td>
                    </tr>";
        }
    ?>
</tbody>
</table>

<div class="card-header">
<h3 class="card-title">10 Artikel Teratas</h3>
</div>
    <ul>
    <?php 
        $teratas = $this->db->query("SELECT * FROM berita order by dibaca DESC LIMIT 10");
        foreach ($teratas->result_array() as $row){
            echo "<li><a target='_BLANK' href='".base_url()."$row[judul_seo]'>$row[judul]</a> <small style='color:red'><i>($row[dibaca])</i></small></li>";
        }
    ?>
    </ul>
</div><!-- /.card (chat card) -->

