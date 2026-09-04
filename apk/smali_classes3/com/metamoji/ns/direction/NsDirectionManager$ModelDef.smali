.class Lcom/metamoji/ns/direction/NsDirectionManager$ModelDef;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelDef"
.end annotation


# static fields
.field public static final MMJNS_MODELPROPVALUE_DIRECTION_VERSION_LATEST:I = 0x1

.field public static final MMJNS_MODELPROP_DIRECTION_DATA:Ljava/lang/String; = "data"

.field public static final MMJNS_MODELPROP_DIRECTION_EDIT_STATUS_ID:Ljava/lang/String; = "esid"

.field public static final MMJNS_MODELPROP_DIRECTION_TARGET:Ljava/lang/String; = "target"

.field public static final MMJNS_MODELTYPE_DIRECTION:Ljava/lang/String; = "direction"


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$ModelDef;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
