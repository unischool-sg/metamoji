.class public Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;
.super Ljava/lang/Object;
.source "UiPlainSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiPlainSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TickInfo"
.end annotation


# instance fields
.field public pos:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    .line 73
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    .line 80
    iput p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    return-void
.end method
