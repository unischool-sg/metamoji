.class Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$1;
.super Ljava/lang/ThreadLocal;
.source "DrUtIdGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$1;->initialValue()Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator$Reference;

    move-result-object v0

    return-object v0
.end method
