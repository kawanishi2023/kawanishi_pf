module User::SongsHelper

def qrcode(url)
  qrcode = RQRCode::QRCode.new(url)
  svg = qrcode.as_svg(
    color: "000",
    shape_rendering: "crispEdges",
    module_size: 3,
    standalone: true,
    use_path: true
  ).html_safe
end

end
