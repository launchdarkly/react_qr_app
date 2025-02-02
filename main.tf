terraform {
  required_providers {
    launchdarkly = {
      source = "launchdarkly/launchdarkly"
      version = "~> 2.5"
    }
  }
  required_version = "~> 1.1.7"
}

provider "launchdarkly" {
  access_token = "YOUR_API_TOKEN"
}

resource "launchdarkly_feature_flag" "react_background_color" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactBackgroundColor"
  name        = "React Background Color"

  variation_type = "string"
  variations {
    value       = "gray"
    name        = "Gray"
  }
  variations {
    value       = "purple"
    name        = "Purple"
  }
  variations {
    value       = "blue"
    name        = "Blue"
  }
  variations {
    value       = "red"
    name        = "Red"
  }

  defaults {
    on_variation  = 1
    off_variation = 0
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "react_qr_code" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactQRCode"
  name        = "React QR Code"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "parent_branding" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactParentBrand"
  name        = "React Parent Brand"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_header" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactChildHeaderLogo"
  name        = "React Child Header Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_spinny" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactChildSpinnyLogo"
  name        = "React Child Spinny Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "child_toggle" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactChildToggle"
  name        = "React Child Toggle"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "New"
  }
  variations {
    value       = false
    name        = "Old"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}


resource "launchdarkly_feature_flag" "customer_logo" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactCustomerLogo"
  name        = "Customer Logo"

  variation_type = "string"
  variations {
    value       = "https://www.link_to_your_logo.png"
    name        = "Our Logo"
  }
  variations {
    value       = "https://www.link_to_another_image.png"
    name        = "Some Other Image"
  }

  defaults {
    on_variation  = 1
    off_variation = 0
  }

  client_side_availability {
    using_environment_id = true
  }
}


resource "launchdarkly_feature_flag" "show_customer_logo" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactShowCustomerLogo"
  name        = "Show Customer Logo"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}

resource "launchdarkly_feature_flag" "show_heart" {
  project_key = "YOUR_PROJECT_KEY"
  key         = "reactShowHeart"
  name        = "Show Heart"

  variation_type = "boolean"
  variations {
    value       = true
    name        = "True"
  }
  variations {
    value       = false
    name        = "False"
  }

  defaults {
    on_variation  = 0
    off_variation = 1
  }

  client_side_availability {
    using_environment_id = true
  }
}
