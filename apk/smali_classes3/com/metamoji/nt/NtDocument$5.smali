.class Lcom/metamoji/nt/NtDocument$5;
.super Ljava/lang/Object;
.source "NtDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocument;->onSuspend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$tm:Lcom/metamoji/cm/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/cm/CmTaskManager;)V
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

    .line 1411
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument$5;->this$0:Lcom/metamoji/nt/NtDocument;

    iput-object p2, p0, Lcom/metamoji/nt/NtDocument$5;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1415
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument$5;->val$tm:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/nt/NtDocument$5$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtDocument$5$1;-><init>(Lcom/metamoji/nt/NtDocument$5;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
