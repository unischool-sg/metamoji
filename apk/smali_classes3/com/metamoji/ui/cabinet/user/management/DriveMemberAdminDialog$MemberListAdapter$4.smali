.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;
.super Ljava/lang/Object;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 190
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;->val$itemData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;->this$1:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter$4;->val$itemData:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleRoleChanged(Landroid/widget/RadioGroup;ILjava/util/Map;)V

    return-void
.end method
