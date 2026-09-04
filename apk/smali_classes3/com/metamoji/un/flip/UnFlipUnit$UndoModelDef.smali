.class Lcom/metamoji/un/flip/UnFlipUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnFlipUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/flip/UnFlipUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR_NEW_VALUE:Ljava/lang/String; = "nb"

.field public static final BACKGROUND_COLOR_OLD_VALUE:Ljava/lang/String; = "ob"

.field public static final FLIP_STATE_NEW_VALUE:Ljava/lang/String; = "ns"

.field public static final FLIP_STATE_OLD_VALUE:Ljava/lang/String; = "os"

.field public static final MODELTYPE_BACKGROUND_COLOR:Ljava/lang/String; = "flipUnitBackgroundColor"

.field public static final MODELTYPE_FLIP_STATE:Ljava/lang/String; = "flipUnitFlipState"

.field public static final MODELTYPE_FLIP_UNIT:Ljava/lang/String; = "flipUnitUndo"

.field public static final MODELTYPE_GEOPROP:Ljava/lang/String; = "flipUnitGeopropUndo"

.field public static final NEW_BACKGROUND_COLOR:Ljava/lang/String; = "nb"

.field public static final NEW_FLIP_STATE:Ljava/lang/String; = "ns"

.field public static final OLD_BACKGROUND_COLOR:Ljava/lang/String; = "ob"

.field public static final OLD_FLIP_STATE:Ljava/lang/String; = "os"

.field public static final VERSION_LATEST_BACKGROUND_COLOR:I = 0x1

.field public static final VERSION_LATEST_FLIP_STATE:I = 0x1

.field public static final VERSION_LATEST_FLIP_UNIT:I = 0x1

.field public static final VERSION_LATEST_GEOPROP:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
