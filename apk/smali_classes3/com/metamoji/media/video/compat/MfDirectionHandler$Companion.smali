.class public final Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;
.super Ljava/lang/Object;
.source "MfDirectionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/compat/MfDirectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/media/video/compat/MfDirectionHandler;",
        "directionManager",
        "Lcom/metamoji/ns/direction/NsDirectionManager;",
        "rootModel",
        "Lcom/metamoji/df/model/IModel;",
        "MMJNT_MEDIAFILES_MANAGER_HANDLER_ID",
        "",
        "getMMJNT_MEDIAFILES_MANAGER_HANDLER_ID$annotations",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/compat/MfDirectionHandler$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getMMJNT_MEDIAFILES_MANAGER_HANDLER_ID$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final create(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/media/video/compat/MfDirectionHandler;
    .locals 1

    const-string/jumbo v0, "rootModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lcom/metamoji/media/video/compat/MfDirectionHandler;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/media/video/compat/MfDirectionHandler;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
