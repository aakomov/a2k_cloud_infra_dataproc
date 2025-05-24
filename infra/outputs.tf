# Выходные данные
output "proxy_public_ip" {
  value = yandex_compute_instance.proxy.network_interface[0].nat_ip_address
}