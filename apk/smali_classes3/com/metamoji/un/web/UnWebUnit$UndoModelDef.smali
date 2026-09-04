.class Lcom/metamoji/un/web/UnWebUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnWebUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/web/UnWebUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final MMJUN_MODELPROPVALUE_WEB_URL_UNDO_VERSION_LATEST:I = 0x1

.field public static final MMJUN_MODELPROP_WEB_URL_UNDO_NEW_DIRECTION:Ljava/lang/String; = "ndi"

.field public static final MMJUN_MODELPROP_WEB_URL_UNDO_NEW_REQUEST_URL:Ljava/lang/String; = "nru"

.field public static final MMJUN_MODELPROP_WEB_URL_UNDO_OLD_DIRECTION:Ljava/lang/String; = "odi"

.field public static final MMJUN_MODELPROP_WEB_URL_UNDO_OLD_REQUEST_URL:Ljava/lang/String; = "oru"

.field public static final MMJUN_MODELTYPE_WEB_URL_UNDO:Ljava/lang/String; = "weburlundo"


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/web/UnWebUnit;


# direct methods
.method private constructor <init>(Lcom/metamoji/un/web/UnWebUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnit$UndoModelDef;->this$0:Lcom/metamoji/un/web/UnWebUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
