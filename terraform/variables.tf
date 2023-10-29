variable "pub_sub_name_set" {
   description = "A set of GCS pubsub names..."
   type        = list(string)
   default   = [
               "some-pubsub-name-001",
               "some-pubsub-name-002",
               "some-pubsub-name-003",
             ]

}