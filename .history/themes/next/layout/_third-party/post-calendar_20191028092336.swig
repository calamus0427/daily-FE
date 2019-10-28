<div class="container archive-calendar">
    <div class="card">
        <div id="post-calendar" class="card-content"></div>
    </div>
</div>

<script type="text/javascript" src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
<script type="text/javascript" src="https://cdn.bootcss.com/moment.js/2.24.0/moment.min.js"></script>
<script type="text/javascript">
    let myChart = echarts.init(document.getElementById('post-calendar'));


    // var nameMap = (xconfig.language && config.language.indexOf('zh') >= 0) ? 'cn' : 'en';
    var nameMap = 'cn' ;
    var titleText = '打卡日历' ;

    // calculate range.
    var startDate = moment().subtract(1, 'years');
    var endDate = moment();
    var rangeArr = [startDate.format('YYYY-MM-DD'),endDate.format('YYYY-MM-DD')] ;

    // post and count map.
    var dateMap = new Map();
    //site全局变量拿不到，先用写死的方式
    var site = {
      posts:[{
        date:'2019-02-20',
      },{
        date:'2019-02-22',
      },{
        date:'2019-02-25',
      },{
        date:'2019-02-26',
      },{
        date:'2019-02-27',
      },{
        date:'2019-02-27',
      },{
        date:'2019-02-28',
      },{
        date:'2019-03-01',
      },{
        date:'2019-03-04',
      },{
        date:'2019-03-05',
      },{
        date:'2019-03-06',
      },{
        date:'2019-03-07',
      },{
        date:'2019-03-07',
      },{
        date:'2019-03-08',
      },{
        date:'2019-03-11',
      },{
        date:'2019-03-12',
      },{
        date:'2019-03-13',
      },{
        date:'2019-03-14',
      },{
        date:'2019-03-15',
      },{
        date:'2019-03-18',
      },{
        date:'2019-03-19',
      },{
        date:'2019-03-20',
      },{
        date:'2019-03-21',
      },{
        date:'2019-03-22',
      },{
        date:'2019-03-25',
      },{
        date:'2019-03-27',
      },{
        date:'2019-03-28',
      },{
        date:'2019-04-01',
      },{
        date:'2019-04-02',
      },{
        date:'2019-04-02',
      },{
        date:'2019-04-03',
      },{
        date:'2019-04-09',
      },{
        date:'2019-04-10',
      },{
        date:'2019-04-10',
      },{
        date:'2019-04-10',
      },{
        date:'2019-04-11',
      },{
        date:'2019-04-12',
      },{
        date:'2019-04-15',
      },{
        date:'2019-04-16',
      },{
        date:'2019-04-17',
      },{
        date:'2019-04-18',
      },{
        date:'2019-04-19',
      },{
        date:'2019-04-22',
      },{
        date:'2019-04-23',
      },{
        date:'2019-04-23',
      },{
        date:'2019-04-23',
      },{
        date:'2019-04-24',
      },{
        date:'2019-04-25',
      },{
        date:'2019-04-26',
      },{
        date:'2019-04-28',
      },{
        date:'2019-04-29',
      },{
        date:'2019-04-29',
      },{
        date:'2019-04-30',
      },{
        date:'2019-05-05',
      },{
        date:'2019-05-06',
      },{
        date:'2019-05-07',
      },{
        date:'2019-05-07',
      },{
        date:'2019-05-07',
      },{
        date:'2019-05-08',
      },{
        date:'2019-05-09',
      },{
        date:'2019-05-10',
      },{
        date:'2019-05-13',
      },{
        date:'2019-05-14',
      },{
        date:'2019-05-15',
      },{
        date:'2019-05-16',
      },{
        date:'2019-05-17',
      },{
        date:'2019-05-20',
      },{
        date:'2019-05-21',
      },{
        date:'2019-05-21',
      },{
        date:'2019-05-22',
      },{
        date:'2019-05-23',
      },{
        date:'2019-05-24',
      },{
        date:'2019-05-27',
      },{
        date:'2019-05-28',
      },{
        date:'2019-05-29',
      },{
        date:'2019-05-29',
      },{
        date:'2019-06-03',
      },{
        date:'2019-06-04',
      },{
        date:'2019-06-05',
      },{
        date:'2019-06-05',
      },{
        date:'2019-06-06',
      },{
        date:'2019-06-10',
      },{
        date:'2019-06-11',
      },{
        date:'2019-06-13',
      },{
        date:'2019-06-14',
      },{
        date:'2019-06-17',
      },{
        date:'2019-06-18',
      },{
        date:'2019-06-19',
      },{
        date:'2019-06-20',
      },{
        date:'2019-06-21',
      },{
        date:'2019-06-24',
      },{
        date:'2019-06-25',
      },{
        date:'2019-06-27',
      },{
        date:'2019-07-01',
      },{
        date:'2019-07-02',
      },{
        date:'2019-07-03',
      },{
        date:'2019-07-04',
      },{
        date:'2019-07-08',
      },{
        date:'2019-07-09',
      },{
        date:'2019-07-10',
      },{
        date:'2019-07-11',
      },{
        date:'2019-07-12',
      },{
        date:'2019-07-15',
      },{
        date:'2019-07-16',
      },{
        date:'2019-07-17',
      },{
        date:'2019-07-18',
      },{
        date:'2019-07-19',
      },{
        date:'2019-07-22',
      },{
        date:'2019-07-23',
      },{
        date:'2019-07-24',
      },{
        date:'2019-07-25',
      },{
        date:'2019-07-26',
      },{
        date:'2019-07-29',
      },{
        date:'2019-08-15',
      },{
        date:'2019-08-30',
      },{
        date:'2019-09-01',
      },{
        date:'2019-09-03',
      },{
        date:'2019-09-04',
      },{
        date:'2019-09-05',
      },{
        date:'2019-09-09',
      },{
        date:'2019-09-10',
      },{
        date:'2019-09-11',
      },{
        date:'2019-09-12',
      },{
        date:'2019-09-16',
      },{
        date:'2019-09-17',
      },{
        date:'2019-09-18',
      },{
        date:'2019-09-19',
      },{
        date:'2019-09-20',
      },{
        date:'2019-09-23',
      },{
        date:'2019-09-24',
      },{
        date:'2019-09-25',
      },{
        date:'2019-09-26',
      },{
        date:'2019-09-27',
      },{
        date:'2019-09-29',
      },{
        date:'2019-09-30',
      },{
        date:'2019-10-08',
      },{
        date:'2019-10-09',
      },{
        date:'2019-10-10',
      },{
        date:'2019-10-11',
      },{
        date:'2019-10-13',
      },{
        date:'2019-10-22',
      },{
        date:'2019-10-23',
      },{
        date:'2019-10-24',
      },{
        date:'2019-10-28',
      }]
    }
    site.posts.forEach(function (post) {
        var date = post.date ;
        var count = dateMap.get(date);
        dateMap.set(date, count == null || count == undefined ? 1 : count + 1);
    });

    // loop the data for the current year, generating the number of post per day
    var i = 0;
    var datePosts = [] ;
    var dayTime = 3600 * 24 * 1000;
    for (var time = startDate; time <= endDate; time += dayTime) {
        var date = moment(time).format('YYYY-MM-DD');
        datePosts.push([date,dateMap.has(date) ? dateMap.get(date) : 0])
    }

    var option = {
        title: {
            top: 0,
            text: titleText,
            left: 'center',
            textStyle: {
                color: '#3C4858'
            }
        },
        tooltip: {
            padding: 10,
            backgroundColor: '#555',
            borderColor: '#777',
            borderWidth: 1,
            formatter: function (obj) {
                var value = obj.value;
                return '<div style="font-size: 14px;">' + value[0] + '：更新' + value[1] + '篇文章❤️'+'</div>';
            }
        },
        visualMap: {
            show:true,
            min: 0,
            max: 10,
            calculable: true,
            type: 'piecewise',
            orient: 'horizontal',
            categories: [0, 1, 2, 3, 4],
            left: 'center',
            top: 65,
            itemWidth: 12,
            itemHeight: 12,
            textStyle: {
                color: '#000'
            },
            inRange: {
                    symbol: 'rect',
                    color: ['#ebedf0', '#99CCFF', '#60a5ea', '#3b91e6', '#135698']
            },
        },
        calendar: {
          top: 120,
          left: 30,
          right: 30,
          range: rangeArr,
          splitLine: {
              show: false,
          },
          cellSize: [15, 15],
          itemStyle: {
              normal: {
                  borderWidth: 2,
                  borderColor: '#fff',
              }
          },
          yearLabel: {show: false},
          monthLabel: {
              nameMap:  'cn',
              fontSize: 10
          },
          dayLabel: {
              nameMap: 'cn',
              fontSize: 10
          }
        },
        series: [{
            type: 'heatmap',
            coordinateSystem: 'calendar',
            calendarIndex: 0,
            data:  datePosts
        }]

    };

    myChart.setOption(option);
</script>
