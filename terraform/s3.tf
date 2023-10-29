resource "google_pubsub_topic" "example" {
  name = "example-topic"

}

resource "google_pubsub_topic" "example1" {
   for_each      = toset(var.pub_sub_name_set )
   name          = each.value

}