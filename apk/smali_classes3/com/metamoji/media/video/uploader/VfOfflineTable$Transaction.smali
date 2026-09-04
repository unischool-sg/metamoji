.class public final Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;
.super Ljava/lang/Object;
.source "VfOfflineTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfOfflineTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u0006\u0010\u0011\u001a\u00020\u000eJ:\u0010\u0012\u001a\u0002H\u0013\"\n\u0008\u0000\u0010\u0013*\u0004\u0018\u00010\u00012!\u0010\u0014\u001a\u001d\u0012\u0013\u0012\u00110\u0000\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u0002H\u00130\u0015\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;",
        "",
        "db",
        "Lcom/metamoji/sqldb/SqlDatabase;",
        "<init>",
        "(Lcom/metamoji/sqldb/SqlDatabase;)V",
        "locked",
        "",
        "_database",
        "Ljava/lang/ref/WeakReference;",
        "database",
        "getDatabase",
        "()Lcom/metamoji/sqldb/SqlDatabase;",
        "begin",
        "",
        "commit",
        "rollback",
        "close",
        "using",
        "T",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "txn",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field private final _database:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private locked:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->_database:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getDatabase()Lcom/metamoji/sqldb/SqlDatabase;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->_database:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sqldb/SqlDatabase;

    return-object v0
.end method


# virtual methods
.method public final begin()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    .line 153
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->lock()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->commit()V

    return-void
.end method

.method public final commit()V
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    .line 159
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    :cond_0
    return-void
.end method

.method public final rollback()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->locked:Z

    .line 165
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V

    :cond_0
    return-void
.end method

.method public final using(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->close()V

    throw p1
.end method
