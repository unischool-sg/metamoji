.class Lcom/metamoji/nt/NtStartup$CancellableTask$1;
.super Ljava/lang/Object;
.source "NtStartup.java"

# interfaces
.implements Lcom/metamoji/nt/dl/INtDownloadCanceller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtStartup$CancellableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtStartup$CancellableTask;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtStartup$CancellableTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/metamoji/nt/NtStartup$CancellableTask$1;->this$1:Lcom/metamoji/nt/NtStartup$CancellableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/metamoji/nt/NtStartup$CancellableTask$1;->this$1:Lcom/metamoji/nt/NtStartup$CancellableTask;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtStartup$CancellableTask;->isCancelled()Z

    move-result v0

    return v0
.end method
