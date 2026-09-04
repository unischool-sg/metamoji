.class public final Lcom/metamoji/media/video/uploader/VfUploadObserver;
.super Ljava/lang/Object;
.source "VfUploadObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J]\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062M\u0010\r\u001aI\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\n0\u000eJ\u0016\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\u0016\u001a\u00020\nJ \u0010\u0017\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tJ-\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\u0006H\u0086\u0002R4\u0010\u0004\u001a(\u0012\u0004\u0012\u00020\u0006\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\n0\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadObserver;",
        "",
        "<init>",
        "()V",
        "eventMap",
        "Ljava/util/HashMap;",
        "",
        "Lcom/metamoji/lib/utils/Funcies3;",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "",
        "addListener",
        "ticket",
        "listener",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "status",
        "progress",
        "removeListener",
        "handle",
        "clearListener",
        "clearAll",
        "fireEvent",
        "get",
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


# instance fields
.field private final eventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/Funcies3<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/Funcies3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/lib/utils/Funcies3;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Funcies3;-><init>()V

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1, p2}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 14
    iget-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final clearAll()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final clearListener(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/Funcies3;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/lib/utils/Funcies3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final get(Ljava/lang/String;)Lcom/metamoji/lib/utils/Funcies3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/lib/utils/Funcies3<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/Funcies3;

    return-object p1
.end method

.method public final removeListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/Funcies3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0, p2}, Lcom/metamoji/lib/utils/Funcies3;->remove(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies3;->getSize()I

    move-result p2

    if-nez p2, :cond_1

    .line 25
    iget-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadObserver;->eventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
