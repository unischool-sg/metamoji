.class public Lcom/metamoji/un/image/UnImageUnit$ModelDef;
.super Lcom/metamoji/nt/NtUnitController$ModelDef;
.source "UnImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/image/UnImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelDef"
.end annotation


# static fields
.field public static final HAS_SHADOW:Ljava/lang/String; = "hasShadow"

.field public static final IMAGE_TICKET:Ljava/lang/String; = "imageTicket"

.field public static final MASK_HEIGHT:Ljava/lang/String; = "maskHeight"

.field public static final MASK_OFFSET_X:Ljava/lang/String; = "maskOffsetX"

.field public static final MASK_OFFSET_Y:Ljava/lang/String; = "maskOffsetY"

.field public static final MASK_QCURVE_PATH:Ljava/lang/String; = "maskQCurvePath"

.field public static final MASK_WIDTH:Ljava/lang/String; = "maskWidth"

.field public static final OPACITY:Ljava/lang/String; = "opacity"

.field public static final VERSION_1:I = 0x1

.field public static final VERSION_2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitController$ModelDef;-><init>()V

    return-void
.end method
