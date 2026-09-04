.class Lcom/metamoji/un/bgimage/UnBGImageUnit$UnBGImageUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "UnBGImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/bgimage/UnBGImageUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnBGImageUndoPerformer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    .line 111
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 114
    const-string v1, "bgimageundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
