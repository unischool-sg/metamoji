.class Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$2;
.super Ljava/lang/Object;
.source "SelectOrganizationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;->-$$Nest$mdeleteItems(Lcom/metamoji/ui/cabinet/user/SelectOrganizationDialog;)V

    return-void
.end method
