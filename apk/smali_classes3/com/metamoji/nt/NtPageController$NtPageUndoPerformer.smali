.class Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NtPageUndoPerformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtPageController-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 569
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    .line 572
    const-string v1, "pagebgimageundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v2, p1, :cond_0

    return v2

    .line 575
    :cond_0
    const-string v1, "pagestyleundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v2, p1, :cond_1

    return v2

    .line 578
    :cond_1
    const-string v1, "page.textunit.combine.undo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v2, p1, :cond_2

    return v2

    .line 581
    :cond_2
    const-string v1, "page.textunit.separate.undo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v2, p1, :cond_3

    return v2

    .line 584
    :cond_3
    const-string v1, "page.textunit.converttext.undo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v2, p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
