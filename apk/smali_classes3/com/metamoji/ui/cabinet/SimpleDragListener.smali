.class public Lcom/metamoji/ui/cabinet/SimpleDragListener;
.super Ljava/lang/Object;
.source "SimpleDragListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuringDrag(IIII)I
    .locals 0

    return p1
.end method

.method public onStartDrag(I)I
    .locals 0

    return p1
.end method

.method public onStopDrag(IIII)Z
    .locals 0

    if-eq p1, p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    if-ltz p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
