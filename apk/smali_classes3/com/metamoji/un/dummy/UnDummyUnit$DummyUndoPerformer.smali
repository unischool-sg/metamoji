.class Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnDummyUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/dummy/UnDummyUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/dummy/UnDummyUnit-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 401
    const-string v0, "!type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "!version"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    .line 404
    const-string v1, "dummyaddunitundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v3, p1, :cond_0

    return v3

    :cond_0
    return v2

    .line 406
    :cond_1
    const-string v1, "dummygeopropundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v3, p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 409
    :cond_3
    const-string/jumbo p1, "unknown undo type: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
