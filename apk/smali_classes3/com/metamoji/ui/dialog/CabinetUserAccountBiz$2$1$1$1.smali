.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1$1;
.super Ljava/lang/Object;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1$1;->this$3:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1$1;->this$3:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1$1;->this$2:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2$1;->this$1:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$2;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->dismiss()V

    .line 154
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->logoutWithClearPasscode(Z)V

    return-void
.end method
