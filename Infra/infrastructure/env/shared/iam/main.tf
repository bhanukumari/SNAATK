module "IAMSetup" {
    source = "git::git@gitlab.com:snaatak/avengers-p2/devops-repos/tf-modules/iam-setup.git?ref=test"
    user_name = var.user_name
    group_name = var.group_name  
    group_policy = var.group_policy
    iam_role_policy = var.iam_role_policy

}
