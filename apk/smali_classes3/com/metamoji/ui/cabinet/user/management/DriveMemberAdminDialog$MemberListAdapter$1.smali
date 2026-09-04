.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

.field final synthetic val$itemData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    if-eqz p2, :cond_0

    .line 125
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$1;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->-$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    return-void
.end method
