.class Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility$1;
.super Ljava/lang/ThreadLocal;
.source "DrUtMathUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2505
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 2505
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility$1;->initialValue()[F

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[F
    .locals 1

    const/16 v0, 0x10

    .line 2507
    new-array v0, v0, [F

    return-object v0
.end method
