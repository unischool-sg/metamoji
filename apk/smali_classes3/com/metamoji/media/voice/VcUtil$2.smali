.class Lcom/metamoji/media/voice/VcUtil$2;
.super Ljava/lang/Object;
.source "VcUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/VcUtil;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/metamoji/media/voice/VcUtil$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iput-object p2, p0, Lcom/metamoji/media/voice/VcUtil$2;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 599
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/metamoji/media/voice/VcUtil$2;->val$command:Lcom/metamoji/nt/NtCommand;

    iget-object v2, p0, Lcom/metamoji/media/voice/VcUtil$2;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 605
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
