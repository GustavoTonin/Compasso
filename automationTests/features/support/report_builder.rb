require 'report_builder'

time = Time.now.getutc
time.localtime

    ReportBuilder.configure do |config|
      config.encoding = 'utf-8'
      config.json_path = 'reports'
      config.report_path = 'reports/cucumber_reports'
      config.report_types = [:html]
      config.report_title = 'Relatório'
      config.color = 'blue'
      config.additional_css = 'css_report_builder.css'
      config.additional_info = {
          Browser: 'Chrome',
          'Projeto' => 'Papito',
          'Data do Report' => "#{time.strftime('%d/%m/%Y')} - #{time.strftime('%k:%M')}"
      }
    end