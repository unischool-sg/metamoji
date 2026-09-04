.class Lcom/metamoji/un/bgimage/UnBGImageUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnBGImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/bgimage/UnBGImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "bgimageundo"

.field public static final NEW_BGCOLOR:Ljava/lang/String; = "nc"

.field public static final NEW_COLOR_OPACITY:Ljava/lang/String; = "nco"

.field public static final NEW_OPACITY:Ljava/lang/String; = "no"

.field public static final NEW_STYLE:Ljava/lang/String; = "ns"

.field public static final NEW_TICKET:Ljava/lang/String; = "nt"

.field public static final OLD_BGCOLOR:Ljava/lang/String; = "oc"

.field public static final OLD_COLOR_OPACITY:Ljava/lang/String; = "oco"

.field public static final OLD_OPACITY:Ljava/lang/String; = "oo"

.field public static final OLD_STYLE:Ljava/lang/String; = "os"

.field public static final OLD_TICKET:Ljava/lang/String; = "ot"

.field public static final VERSION_LATEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/bgimage/UnBGImageUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/bgimage/UnBGImageUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit$UndoModelDef;->this$0:Lcom/metamoji/un/bgimage/UnBGImageUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
