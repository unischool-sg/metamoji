.class Lcom/metamoji/sqldb/SqlJniCallHarness;
.super Ljava/lang/Object;
.source "SqlJniCallHarness.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string/jumbo v0, "sqldbjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/metamoji/sqldb/SqlJniCallHarness;->initialize_()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native initialize_()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method
