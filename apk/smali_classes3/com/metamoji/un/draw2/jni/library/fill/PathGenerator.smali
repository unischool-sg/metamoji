.class public Lcom/metamoji/un/draw2/jni/library/fill/PathGenerator;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/metamoji/un/draw2/jni/DrawUnitComponent;->use()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static native native_merge([F[FZ)[F
.end method

.method protected static native native_simplify([F)[F
.end method
