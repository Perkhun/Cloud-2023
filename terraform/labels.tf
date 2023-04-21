module "base_labels" {
    source = "cloudposse/label/null"
    version = "0.25.0"
    namespace = var.namespace
    stage = var.stage
    delimiter = "-"
    label_order = var.label_order
}