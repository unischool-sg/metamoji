.class public final Lcom/metamoji/ch/ChLegend$Item;
.super Ljava/lang/Object;
.source "ChLegend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/ChLegend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChLegend$Item$Element;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u00002\u00020\u0001:\u0001\u001fBY\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/ch/ChLegend$Item;",
        "",
        "elements",
        "Ljava/util/EnumSet;",
        "Lcom/metamoji/ch/ChLegend$Item$Element;",
        "label",
        "",
        "fillColor",
        "",
        "lineColor",
        "lineWidth",
        "",
        "marker",
        "Lcom/metamoji/ch/ChMarker;",
        "markerSize",
        "markerColor",
        "<init>",
        "(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DI)V",
        "getElements",
        "()Ljava/util/EnumSet;",
        "getLabel",
        "()Ljava/lang/String;",
        "getFillColor",
        "()I",
        "getLineColor",
        "getLineWidth",
        "()D",
        "getMarker",
        "()Lcom/metamoji/ch/ChMarker;",
        "getMarkerSize",
        "getMarkerColor",
        "Element",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final elements:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/ch/ChLegend$Item$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final fillColor:I

.field private final label:Ljava/lang/String;

.field private final lineColor:I

.field private final lineWidth:D

.field private final marker:Lcom/metamoji/ch/ChMarker;

.field private final markerColor:I

.field private final markerSize:D


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/ch/ChLegend$Item$Element;",
            ">;",
            "Ljava/lang/String;",
            "IID",
            "Lcom/metamoji/ch/ChMarker;",
            "DI)V"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "marker"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/metamoji/ch/ChLegend$Item;->elements:Ljava/util/EnumSet;

    .line 29
    iput-object p2, p0, Lcom/metamoji/ch/ChLegend$Item;->label:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/metamoji/ch/ChLegend$Item;->fillColor:I

    .line 31
    iput p4, p0, Lcom/metamoji/ch/ChLegend$Item;->lineColor:I

    .line 32
    iput-wide p5, p0, Lcom/metamoji/ch/ChLegend$Item;->lineWidth:D

    .line 33
    iput-object p7, p0, Lcom/metamoji/ch/ChLegend$Item;->marker:Lcom/metamoji/ch/ChMarker;

    .line 34
    iput-wide p8, p0, Lcom/metamoji/ch/ChLegend$Item;->markerSize:D

    .line 35
    iput p10, p0, Lcom/metamoji/ch/ChLegend$Item;->markerColor:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p12, p11, 0x4

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p12, p11, 0x10

    const-wide/16 v1, 0x0

    if-eqz p12, :cond_2

    move-wide p5, v1

    :cond_2
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_3

    .line 33
    sget-object p7, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    :cond_3
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_4

    move-wide p8, v1

    :cond_4
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_5

    move p11, v0

    goto :goto_0

    :cond_5
    move p11, p10

    :goto_0
    move-wide p9, p8

    move-object p8, p7

    move-wide p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p11}, Lcom/metamoji/ch/ChLegend$Item;-><init>(Ljava/util/EnumSet;Ljava/lang/String;IIDLcom/metamoji/ch/ChMarker;DI)V

    return-void
.end method


# virtual methods
.method public final getElements()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/ch/ChLegend$Item$Element;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$Item;->elements:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/metamoji/ch/ChLegend$Item;->fillColor:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$Item;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineColor()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/metamoji/ch/ChLegend$Item;->lineColor:I

    return v0
.end method

.method public final getLineWidth()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/metamoji/ch/ChLegend$Item;->lineWidth:D

    return-wide v0
.end method

.method public final getMarker()Lcom/metamoji/ch/ChMarker;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$Item;->marker:Lcom/metamoji/ch/ChMarker;

    return-object v0
.end method

.method public final getMarkerColor()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/ch/ChLegend$Item;->markerColor:I

    return v0
.end method

.method public final getMarkerSize()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/metamoji/ch/ChLegend$Item;->markerSize:D

    return-wide v0
.end method
