.class public final Lcom/metamoji/media/video/compat/MfDirectionHandler;
.super Ljava/lang/Object;
.source "MfDirectionHandler.kt"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;,
        Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0016J,\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u000fJ\u001a\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfDirectionHandler;",
        "Lcom/metamoji/ns/direction/INsDirectionHandler;",
        "directionManager",
        "Lcom/metamoji/ns/direction/NsDirectionManager;",
        "rootModel",
        "Lcom/metamoji/df/model/IModel;",
        "<init>",
        "(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/df/model/IModel;)V",
        "mDirectionManager",
        "Ljava/lang/ref/WeakReference;",
        "idMap",
        "Lcom/metamoji/media/video/compat/MfKarma;",
        "getDirectionHandlerID",
        "",
        "handleDirections",
        "",
        "receivedDirections",
        "",
        "Lcom/metamoji/ns/direction/NsReceivedDirection;",
        "observer",
        "Lcom/metamoji/ns/direction/INsDirectionObserver;",
        "onCompleted",
        "Ljava/lang/Runnable;",
        "dispose",
        "handleSharingDirection",
        "receivedDirection",
        "Companion",
        "MfDirectionData",
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


# static fields
.field public static final Companion:Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;

.field public static final MMJNT_MEDIAFILES_MANAGER_HANDLER_ID:Ljava/lang/String; = "TheMediaFileMan"


# instance fields
.field private final directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field private final idMap:Lcom/metamoji/media/video/compat/MfKarma;

.field private final mDirectionManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ns/direction/NsDirectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->Companion:Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const-string v0, "directionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rootModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->mDirectionManager:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance v1, Lcom/metamoji/media/video/compat/MfKarma;

    invoke-direct {v1, p2}, Lcom/metamoji/media/video/compat/MfKarma;-><init>(Lcom/metamoji/df/model/IModel;)V

    iput-object v1, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->idMap:Lcom/metamoji/media/video/compat/MfKarma;

    .line 13
    move-object p2, p0

    check-cast p2, Lcom/metamoji/ns/direction/INsDirectionHandler;

    invoke-virtual {p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p1, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    return-void
.end method

.method private final handleSharingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 55
    new-instance v0, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.metamoji.df.model.IModel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 56
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 57
    new-instance v1, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/video/compat/MfDirectionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/compat/MfDirectionHandler;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;->forEachMediaFileModel(Lkotlin/jvm/functions/Function2;)V

    .line 65
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return-void
.end method

.method static final handleSharingDirection$lambda$0(Lcom/metamoji/media/video/compat/MfDirectionHandler;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/metamoji/media/video/compat/MfRecord;

    invoke-direct {v0, p3, p2}, Lcom/metamoji/media/video/compat/MfRecord;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->idMap:Lcom/metamoji/media/video/compat/MfKarma;

    invoke-virtual {v0}, Lcom/metamoji/media/video/compat/MfRecord;->getServerId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/media/video/compat/MfKarma;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 61
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 63
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/media/video/compat/MfDirectionHandler;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/metamoji/ns/direction/INsDirectionHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    return-void
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "TheMediaFileMan"

    return-object v0
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v1

    .line 37
    sget-object v2, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData;->Companion:Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData$Companion;

    invoke-virtual {v2, v1}, Lcom/metamoji/media/video/compat/MfDirectionHandler$MfDirectionData$Companion;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0, v0, p2}, Lcom/metamoji/media/video/compat/MfDirectionHandler;->handleSharingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "MediaFiles manager received unknown direction"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 44
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
