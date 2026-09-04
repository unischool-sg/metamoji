.class final Lcom/metamoji/ch/ChLegend$ItemWithLayout;
.super Ljava/lang/Object;
.source "ChLegend.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/ChLegend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemWithLayout"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/ch/ChLegend$ItemWithLayout;",
        "",
        "rect",
        "Lcom/metamoji/ch/ChRect;",
        "labelSize",
        "Lcom/metamoji/ch/ChSize;",
        "item",
        "Lcom/metamoji/ch/ChLegend$Item;",
        "<init>",
        "(Lcom/metamoji/ch/ChRect;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/ChLegend$Item;)V",
        "getRect",
        "()Lcom/metamoji/ch/ChRect;",
        "getLabelSize",
        "()Lcom/metamoji/ch/ChSize;",
        "getItem",
        "()Lcom/metamoji/ch/ChLegend$Item;",
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
.field private final item:Lcom/metamoji/ch/ChLegend$Item;

.field private final labelSize:Lcom/metamoji/ch/ChSize;

.field private final rect:Lcom/metamoji/ch/ChRect;


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/ChRect;Lcom/metamoji/ch/ChSize;Lcom/metamoji/ch/ChLegend$Item;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "labelSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->rect:Lcom/metamoji/ch/ChRect;

    .line 54
    iput-object p2, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->labelSize:Lcom/metamoji/ch/ChSize;

    .line 55
    iput-object p3, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->item:Lcom/metamoji/ch/ChLegend$Item;

    return-void
.end method


# virtual methods
.method public final getItem()Lcom/metamoji/ch/ChLegend$Item;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->item:Lcom/metamoji/ch/ChLegend$Item;

    return-object v0
.end method

.method public final getLabelSize()Lcom/metamoji/ch/ChSize;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->labelSize:Lcom/metamoji/ch/ChSize;

    return-object v0
.end method

.method public final getRect()Lcom/metamoji/ch/ChRect;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ch/ChLegend$ItemWithLayout;->rect:Lcom/metamoji/ch/ChRect;

    return-object v0
.end method
