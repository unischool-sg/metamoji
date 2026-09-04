.class public Lcom/metamoji/ch/ChLegendDefaultSetting;
.super Ljava/lang/Object;
.source "IChLegendSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/IChLegendSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChLegendDefaultSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/ch/ChLegendDefaultSetting;",
        "Lcom/metamoji/ch/IChLegendSetting;",
        "<init>",
        "()V",
        "label",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "getLabel",
        "()Lcom/metamoji/ch/IChLabelSetting;",
        "boxWidth",
        "",
        "getBoxWidth",
        "()D",
        "boxHeight",
        "getBoxHeight",
        "boxMargin",
        "getBoxMargin",
        "itemMargin",
        "getItemMargin",
        "itemSpace",
        "getItemSpace",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/ch/ChLegendDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/ChLegendDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/ChLegendDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/ChLegendDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/ChLegendDefaultSetting;->Companion:Lcom/metamoji/ch/ChLegendDefaultSetting$Companion;

    .line 34
    new-instance v0, Lcom/metamoji/ch/ChLegendDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/ChLegendDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/ChLegendDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChLegendDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/ChLegendDefaultSetting;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/ch/ChLegendDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChLegendDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getBoxHeight()D
    .locals 2

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    return-wide v0
.end method

.method public getBoxMargin()D
    .locals 2

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    return-wide v0
.end method

.method public getBoxWidth()D
    .locals 2

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    return-wide v0
.end method

.method public getItemMargin()D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method

.method public getItemSpace()D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0
.end method

.method public getLabel()Lcom/metamoji/ch/IChLabelSetting;
    .locals 1

    .line 38
    sget-object v0, Lcom/metamoji/ch/ChLabelDefaultSetting;->Companion:Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;->getSharedInstance()Lcom/metamoji/ch/ChLabelDefaultSetting;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ch/IChLabelSetting;

    return-object v0
.end method
