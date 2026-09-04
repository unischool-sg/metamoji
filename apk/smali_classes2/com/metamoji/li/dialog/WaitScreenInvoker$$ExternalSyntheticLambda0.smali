.class public final synthetic Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/metamoji/li/dialog/WaitScreenInvoker;


# direct methods
.method public synthetic constructor <init>(ZLcom/metamoji/li/dialog/WaitScreenInvoker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/li/dialog/WaitScreenInvoker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/metamoji/li/dialog/WaitScreenInvoker$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/li/dialog/WaitScreenInvoker;

    invoke-static {v0, v1}, Lcom/metamoji/li/dialog/WaitScreenInvoker;->_init_$lambda$0(ZLcom/metamoji/li/dialog/WaitScreenInvoker;)V

    return-void
.end method
