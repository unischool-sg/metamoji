.class Lcom/metamoji/un/image/UnImageUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/image/UnImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final MODELTYPE_GEOPROP:Ljava/lang/String; = "imagegeopropundo"

.field public static final MODELTYPE_MASKING:Ljava/lang/String; = "imagemaskingundo"

.field public static final MODELTYPE_REPLACE:Ljava/lang/String; = "imagereplaceundo"

.field public static final NEW_MASK_HEIGHT:Ljava/lang/String; = "nmh"

.field public static final NEW_MASK_QCURVE_PATH:Ljava/lang/String; = "nmqp"

.field public static final NEW_MASK_WIDTH:Ljava/lang/String; = "nmw"

.field public static final NEW_MASK_X:Ljava/lang/String; = "nmx"

.field public static final NEW_MASK_Y:Ljava/lang/String; = "nmy"

.field public static final NEW_OPACITY:Ljava/lang/String; = "nop"

.field public static final NEW_TICKET:Ljava/lang/String; = "nt"

.field public static final OLD_MASK_HEIGHT:Ljava/lang/String; = "omh"

.field public static final OLD_MASK_QCURVE_PATH:Ljava/lang/String; = "omqp"

.field public static final OLD_MASK_WIDTH:Ljava/lang/String; = "omw"

.field public static final OLD_MASK_X:Ljava/lang/String; = "omx"

.field public static final OLD_MASK_Y:Ljava/lang/String; = "omy"

.field public static final OLD_OPACITY:Ljava/lang/String; = "oop"

.field public static final OLD_TICKET:Ljava/lang/String; = "ot"

.field public static final VERSION_LATEST_GEOPROP:I = 0x1

.field public static final VERSION_LATEST_MASKING:I = 0x1

.field public static final VERSION_LATEST_REPLACE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/image/UnImageUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit$UndoModelDef;->this$0:Lcom/metamoji/un/image/UnImageUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
