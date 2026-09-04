.class public Lcom/metamoji/mazec/RACExecContext;
.super Ljava/lang/Object;
.source "RACExecContext.java"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/metamoji/mazec/RACExecContext;->createJNI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/mazec/RACExecContext;->mHandle:J

    return-void
.end method

.method protected static native cancelExecJNI(J)V
.end method

.method public static native createJNI()J
.end method

.method protected static native destroyJNI(J)V
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 33
    iget-wide v0, p0, Lcom/metamoji/mazec/RACExecContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {v0, v1}, Lcom/metamoji/mazec/RACExecContext;->cancelExecJNI(J)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 5

    .line 20
    iget-wide v0, p0, Lcom/metamoji/mazec/RACExecContext;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 21
    invoke-static {v0, v1}, Lcom/metamoji/mazec/RACExecContext;->destroyJNI(J)V

    .line 22
    iput-wide v2, p0, Lcom/metamoji/mazec/RACExecContext;->mHandle:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/metamoji/mazec/RACExecContext;->dispose()V

    return-void
.end method

.method public getHandle()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/metamoji/mazec/RACExecContext;->mHandle:J

    return-wide v0
.end method
