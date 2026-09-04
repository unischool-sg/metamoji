.class public Lcom/metamoji/ch/ChScaleGridDefaultSetting;
.super Ljava/lang/Object;
.source "IChScaleGridSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/IChScaleGridSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChScaleGridDefaultSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/ch/ChScaleGridDefaultSetting;",
        "Lcom/metamoji/ch/IChScaleGridSetting;",
        "<init>",
        "()V",
        "lineColor",
        "",
        "getLineColor",
        "()I",
        "lineWidth",
        "",
        "getLineWidth",
        "()D",
        "label",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "getLabel",
        "()Lcom/metamoji/ch/IChLabelSetting;",
        "labelMargin",
        "getLabelMargin",
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
.field public static final Companion:Lcom/metamoji/ch/ChScaleGridDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/ChScaleGridDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/ChScaleGridDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/ChScaleGridDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/ChScaleGridDefaultSetting;->Companion:Lcom/metamoji/ch/ChScaleGridDefaultSetting$Companion;

    .line 24
    new-instance v0, Lcom/metamoji/ch/ChScaleGridDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/ChScaleGridDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/ChScaleGridDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChScaleGridDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/ChScaleGridDefaultSetting;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/ch/ChScaleGridDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChScaleGridDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getLabel()Lcom/metamoji/ch/IChLabelSetting;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/ch/ChLabelDefaultSetting;->Companion:Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;->getSharedInstance()Lcom/metamoji/ch/ChLabelDefaultSetting;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ch/IChLabelSetting;

    return-object v0
.end method

.method public getLabelMargin()D
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    return-wide v0
.end method

.method public getLineColor()I
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0xc0

    .line 28
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getLineWidth()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method
