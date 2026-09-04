.class Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3880
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/text/UnTextUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnit$UndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 3884
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 3885
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 3887
    const-string/jumbo v1, "textUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2

    .line 3893
    :cond_1
    const-string/jumbo p1, "unknown undo model type ({0})"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
