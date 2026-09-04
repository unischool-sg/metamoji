.class public Lcom/metamoji/nt/NtPageSettings$Defaults;
.super Ljava/lang/Object;
.source "NtPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Defaults"
.end annotation


# static fields
.field public static final backgroundImage:Ljava/lang/Object;

.field public static final backgroundImageStyle:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public static final marginLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final paperHeight:D = 556.0

.field public static final paperWidth:F = 417.0f

.field public static final printHeight:D

.field public static final printWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x43520000    # 210.0f

    const/high16 v1, 0x42900000    # 72.0f

    .line 31
    invoke-static {v0, v1}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v2, v0

    sput-wide v2, Lcom/metamoji/nt/NtPageSettings$Defaults;->printWidth:D

    const v0, 0x43948000    # 297.0f

    .line 33
    invoke-static {v0, v1}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->printHeight:D

    .line 36
    new-instance v0, Lcom/metamoji/nt/NtPageSettings$Defaults$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtPageSettings$Defaults$1;-><init>(I)V

    sput-object v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->marginLines:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->backgroundImage:Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    sput-object v0, Lcom/metamoji/nt/NtPageSettings$Defaults;->backgroundImageStyle:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
