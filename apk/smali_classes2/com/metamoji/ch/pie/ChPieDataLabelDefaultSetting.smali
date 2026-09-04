.class public Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;
.super Ljava/lang/Object;
.source "IChPieDataLabelSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/pie/IChPieDataLabelSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;",
        "Lcom/metamoji/ch/pie/IChPieDataLabelSetting;",
        "<init>",
        "()V",
        "categoryLabel",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "getCategoryLabel",
        "()Lcom/metamoji/ch/IChLabelSetting;",
        "percentageLabel",
        "Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "getPercentageLabel",
        "()Lcom/metamoji/ch/IChDecimalLabelSetting;",
        "leaderLineColor",
        "",
        "getLeaderLineColor",
        "()I",
        "leaderLineWidth",
        "",
        "getLeaderLineWidth",
        "()D",
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
.field public static final Companion:Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;->Companion:Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting$Companion;

    .line 31
    new-instance v0, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;->sharedInstance:Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;->sharedInstance:Lcom/metamoji/ch/pie/ChPieDataLabelDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getCategoryLabel()Lcom/metamoji/ch/IChLabelSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeaderLineColor()I
    .locals 1

    const v0, -0x777778

    return v0
.end method

.method public getLeaderLineWidth()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getPercentageLabel()Lcom/metamoji/ch/IChDecimalLabelSetting;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
