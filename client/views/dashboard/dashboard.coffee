data = [
    ['data1', 30, 200, 100, 400, 150, 250]
    ['data2', 50, 20, 10, 40, 15, 25]
]

Template.dashboard.helpers(
    data: ->
        return data
)

Template.dashboard.rendered = ->
    Deps.autorun ->
        chart = c3.generate(
            bindto: '#chart'
            data:
                columns: data
        )
