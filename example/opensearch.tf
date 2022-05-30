module "opensearch_example" {
  source = "../"
  aos_domain_name = "terraform-domain"
  aos_data_instance_count = 1
  aos_data_instance_type = "t3.small.elasticsearch"
  aos_data_instance_storage = 10
  aos_master_instance_count = 0
  aos_master_instance_type = "t3.small.elasticsearch"
}
