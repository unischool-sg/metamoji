.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$15;
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

    .line 763
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$15;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 p1, 0x1

    .line 767
    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "com.google"

    aput-object v0, v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 768
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$15;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
