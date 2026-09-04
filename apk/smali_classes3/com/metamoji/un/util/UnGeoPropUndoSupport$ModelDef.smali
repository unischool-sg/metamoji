.class public Lcom/metamoji/un/util/UnGeoPropUndoSupport$ModelDef;
.super Ljava/lang/Object;
.source "UnGeoPropUndoSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/util/UnGeoPropUndoSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelDef"
.end annotation


# static fields
.field public static final NEW_CONTENT_SCALE:Ljava/lang/String; = "ns"

.field public static final NEW_HEIGHT:Ljava/lang/String; = "nh"

.field public static final NEW_ROTATION:Ljava/lang/String; = "nr"

.field public static final NEW_WIDTH:Ljava/lang/String; = "nw"

.field public static final NEW_X:Ljava/lang/String; = "nx"

.field public static final NEW_Y:Ljava/lang/String; = "ny"

.field public static final OLD_CONTENT_SCALE:Ljava/lang/String; = "os"

.field public static final OLD_HEIGHT:Ljava/lang/String; = "oh"

.field public static final OLD_ROTATION:Ljava/lang/String; = "or"

.field public static final OLD_WIDTH:Ljava/lang/String; = "ow"

.field public static final OLD_X:Ljava/lang/String; = "ox"

.field public static final OLD_Y:Ljava/lang/String; = "oy"

.field public static final VERSION_LATEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/util/UnGeoPropUndoSupport;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/util/UnGeoPropUndoSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/metamoji/un/util/UnGeoPropUndoSupport$ModelDef;->this$0:Lcom/metamoji/un/util/UnGeoPropUndoSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
