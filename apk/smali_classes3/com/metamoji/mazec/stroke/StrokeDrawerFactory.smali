.class public Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;
.super Ljava/lang/Object;
.source "StrokeDrawerFactory.java"


# static fields
.field public static final DRAWER_BUFFERED:I = 0x1

.field public static final DRAWER_SIMPLE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 17
    new-instance p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;

    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 20
    new-instance p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCIStandard;-><init>(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 22
    new-instance p0, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;

    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerCICalligraphy;-><init>()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 24
    new-instance p0, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;

    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFountain;-><init>()V

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->setStrokeStyleResolver(Lcom/metamoji/mazec/stroke/StrokeStyleResolver;)V

    return-object p0

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "StrokeDrawerFactory unknown penType:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
