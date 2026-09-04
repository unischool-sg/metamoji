.class Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;
.super Ljava/lang/Object;
.source "WebDavSelectDoc.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/WebDavCreateFolder$IWebDavCreatFolderDialogAfterAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavSelectDoc;->handleCreateFolderButtonTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Ljava/lang/String;)V
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

    .line 180
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->this$0:Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;)V
    .locals 4

    .line 184
    new-instance v0, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v0}, Lcom/metamoji/cm/mutable/MutableInt;-><init>()V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 187
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$1;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;Lcom/metamoji/cm/mutable/MutableInt;Ljava/lang/String;)V

    new-instance v3, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc$4$2;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc$4;Lcom/metamoji/cm/mutable/MutableInt;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
