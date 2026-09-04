.class public final Lcom/metamoji/un/video/UnVideoUnit$Companion;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoUnit$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J \u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0011H\u0007J\u0010\u0010\"\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0011H\u0007J\u0018\u0010#\u001a\u00020 2\u0006\u0010$\u001a\u00020\r2\u0006\u0010%\u001a\u00020&H\u0007J\u0018\u0010\'\u001a\u00020 2\u0006\u0010$\u001a\u00020\r2\u0006\u0010(\u001a\u00020)H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010*\u001a\u00020\u0018X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0018X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$Companion;",
        "",
        "<init>",
        "()V",
        "MODELTYPE",
        "",
        "STILL_MODE_ENABLED",
        "",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "createMarkerModel",
        "Lcom/metamoji/df/model/IModel;",
        "unitModel",
        "createVideoModel",
        "modelManager",
        "Lcom/metamoji/df/model/IModelManager;",
        "videoTicket",
        "thumbnailTicket",
        "COLOR_BTN_FG",
        "",
        "COLOR_BTN_BG",
        "BTN_LINE_WIDTH",
        "",
        "PAINT_LINK",
        "Lcom/metamoji/df/sprite/PaintSolid;",
        "getPAINT_LINK",
        "()Lcom/metamoji/df/sprite/PaintSolid;",
        "PAINT_LINK$delegate",
        "Lkotlin/Lazy;",
        "registerPerformer",
        "",
        "targetModelManager",
        "unregisterPerformer",
        "visitModelForAttachments",
        "model",
        "attContext",
        "Lcom/metamoji/df/controller/AttachmentsModelVisitContext;",
        "visitModelForVideoFileManager",
        "context",
        "Lcom/metamoji/df/controller/ModelVisitContext;",
        "MSG_SPRITE_MARGIN_HORZ",
        "MSG_SPRITE_MARGIN_VERT",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPAINT_LINK(Lcom/metamoji/un/video/UnVideoUnit$Companion;)Lcom/metamoji/df/sprite/PaintSolid;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$Companion;->getPAINT_LINK()Lcom/metamoji/df/sprite/PaintSolid;

    move-result-object p0

    return-object p0
.end method

.method private final getPAINT_LINK()Lcom/metamoji/df/sprite/PaintSolid;
    .locals 1

    .line 82
    invoke-static {}, Lcom/metamoji/un/video/UnVideoUnit;->access$getPAINT_LINK$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/PaintSolid;

    return-object v0
.end method


# virtual methods
.method public final createMarkerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "unitModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string/jumbo v1, "video.markers"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 64
    const-string v1, "markers"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final createVideoModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "modelManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoTicket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "thumbnailTicket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v1, "$video"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v1, 0x1

    .line 71
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 72
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    const-string/jumbo v2, "unit"

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unitId"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "dataTicket"

    invoke-interface {p1, v1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string p2, "apply(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 56
    invoke-static {}, Lcom/metamoji/un/video/UnVideoUnit;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method

.method public final registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetModelManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/metamoji/un/video/UnVideoUndoPerformer;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUndoPerformer;-><init>()V

    .line 88
    const-string/jumbo v1, "video.undo"

    check-cast v0, Lcom/metamoji/df/model/IUndoPerformer;

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public final unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "targetModelManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "video.undo"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public final visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/metamoji/un/video/UnVideoUnit$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    const-string/jumbo v2, "thumbnailTicket"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getReplaceTable()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 109
    invoke-interface {p1, v2, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 102
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getTickets()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final visitModelForVideoFileManager(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    instance-of v0, p2, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 122
    const-string v0, "dataTicket"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p2}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->getCommand()Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/video/UnVideoUnit$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext$VisitorCommand;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/metamoji/media/video/compat/MfVideoModelVisitorContext;->getTickets()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 124
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method
