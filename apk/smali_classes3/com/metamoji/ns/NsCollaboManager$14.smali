.class Lcom/metamoji/ns/NsCollaboManager$14;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->onLogoutRoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Z)V
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

    .line 1577
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$14;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$14;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1580
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$14;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->initializePanel()V

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$14;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->hideAllProgressView()V

    .line 1590
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager$14;->val$isConnected:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CollaboDispLoginMessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_ShareServer_Disconnect:I

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    :cond_1
    return-void
.end method
