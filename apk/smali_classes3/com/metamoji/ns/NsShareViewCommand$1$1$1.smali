.class Lcom/metamoji/ns/NsShareViewCommand$1$1$1;
.super Ljava/lang/Object;
.source "NsShareViewCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsShareViewCommand$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsShareViewCommand$1$1;)V
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
    iput-object p1, p0, Lcom/metamoji/ns/NsShareViewCommand$1$1$1;->this$1:Lcom/metamoji/ns/NsShareViewCommand$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    :catch_0
    :goto_0
    sget-object v0, Lcom/metamoji/ns/NsShareViewCommand;->s_bgTaskForGetShareViewList:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    .line 152
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
