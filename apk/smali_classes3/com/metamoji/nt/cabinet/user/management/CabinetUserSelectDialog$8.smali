.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;
.super Ljava/util/TimerTask;
.source "CabinetUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->setSerchTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 687
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    .line 689
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
