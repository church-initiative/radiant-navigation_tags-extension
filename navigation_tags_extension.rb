# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class NavigationTagsExtension < Radiant::Extension
  version "2.0"
  description "Makes building navigations much easier."
  url "http://yourwebsite.com/navigation_tags"
  
  def activate
    Page.send :include, NavigationTags
    
    tab "Content" do
    	add_item("Navigation Type", "/admin/navigation_types", :after => "Layouts", :visibility => [:all])
    end
    
    admin.page.edit.add :form_bottom, "navigation_type", :before => 'edit_buttons'
  end
  
  def deactivate
    # admin.tabs.remove "Navigation Tags"
  end
  
end
