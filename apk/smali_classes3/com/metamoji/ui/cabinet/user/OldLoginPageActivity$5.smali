.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$5;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$5;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 526
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$5;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 528
    const-string v0, "DCServerSelectDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 529
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V

    .line 530
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
