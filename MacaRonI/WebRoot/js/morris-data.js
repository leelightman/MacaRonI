$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2010 Q1',
            HeartRate: 59,
            BloodPressure: 70
        }, {
            period: '2010 Q2',
            HeartRate: 78,
            BloodPressure: 94
        }, {
            period: '2010 Q3',
            HeartRate: 91,
            BloodPressure: 69
        }, {
            period: '2010 Q4',
            HeartRate: 73,
            BloodPressure: 97
        }, {
            period: '2011 Q1',
            HeartRate: 74,
            BloodPressure: 91
        }, {
            period: '2011 Q2',
            HeartRate: 65,
            BloodPressure: 93
        }, {
            period: '2011 Q3',
            HeartRate: 66,
            BloodPressure: 79
        }, {
            period: '2011 Q4',
            HeartRate: 60,
            BloodPressure: 59
        }, {
            period: '2012 Q1',
            HeartRate: 71,
            BloodPressure: 60
        }, {
            period: '2012 Q2',
            HeartRate: 84,
            BloodPressure: 71
        }],
        xkey: 'period',
        ykeys: ['HeartRate', 'BloodPressure'],
        labels: ['HeartRate', 'BloodPressure'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "p1",
            value: 12
        }, {
            label: "p2",
            value: 30
        }, {
            label: "p3",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});
