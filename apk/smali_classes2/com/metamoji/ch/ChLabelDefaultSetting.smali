.class public Lcom/metamoji/ch/ChLabelDefaultSetting;
.super Ljava/lang/Object;
.source "IChLabelSetting.kt"

# interfaces
.implements Lcom/metamoji/ch/IChLabelSetting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/ch/ChLabelDefaultSetting;",
        "Lcom/metamoji/ch/IChLabelSetting;",
        "<init>",
        "()V",
        "color",
        "",
        "getColor",
        "()I",
        "fontName",
        "",
        "getFontName",
        "()Ljava/lang/String;",
        "fontSize",
        "",
        "getFontSize",
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
.field public static final Companion:Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;

.field private static final sharedInstance:Lcom/metamoji/ch/ChLabelDefaultSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ch/ChLabelDefaultSetting;->Companion:Lcom/metamoji/ch/ChLabelDefaultSetting$Companion;

    .line 27
    new-instance v0, Lcom/metamoji/ch/ChLabelDefaultSetting;

    invoke-direct {v0}, Lcom/metamoji/ch/ChLabelDefaultSetting;-><init>()V

    sput-object v0, Lcom/metamoji/ch/ChLabelDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChLabelDefaultSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSharedInstance$cp()Lcom/metamoji/ch/ChLabelDefaultSetting;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/ch/ChLabelDefaultSetting;->sharedInstance:Lcom/metamoji/ch/ChLabelDefaultSetting;

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 2

    const/16 v0, 0xff

    const/16 v1, 0x40

    .line 31
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontSize()D
    .locals 2

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    return-wide v0
.end method
