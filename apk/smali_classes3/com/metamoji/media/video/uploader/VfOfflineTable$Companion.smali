.class public final Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;
.super Ljava/lang/Object;
.source "VfOfflineTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfOfflineTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/metamoji/media/video/uploader/VfOfflineTable;",
        "getInstance",
        "()Lcom/metamoji/media/video/uploader/VfOfflineTable;",
        "setInstance",
        "(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V",
        "initialize",
        "",
        "database",
        "Lcom/metamoji/sqldb/SqlDatabase;",
        "terminate",
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/metamoji/media/video/uploader/VfOfflineTable;
    .locals 1

    .line 11
    invoke-static {}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->access$getInstance$cp()Lcom/metamoji/media/video/uploader/VfOfflineTable;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->getInstance()Lcom/metamoji/media/video/uploader/VfOfflineTable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;-><init>(Lcom/metamoji/sqldb/SqlDatabase;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->setInstance(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V

    :cond_0
    return-void
.end method

.method public final setInstance(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->access$setInstance$cp(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V

    return-void
.end method

.method public final terminate()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->setInstance(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V

    return-void
.end method
