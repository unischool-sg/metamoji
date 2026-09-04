.class Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;
.super Ljava/lang/Object;
.source "AddOrganizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->addOrganization(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V
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

    .line 420
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;->this$0:Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog$6;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;->-$$Nest$mcallSuperOnDone(Lcom/metamoji/ui/cabinet/user/AddOrganizationDialog;Landroid/view/View;)V

    return-void
.end method
