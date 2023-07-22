output "instances" {
  value = [
    for i, vm in aws_instance.instance : {
      private_ip : vm.private_ip
      public_ip : vm.public_ip
    }
  ]
}