.class public final Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;
.super Ljava/lang/Object;
.source "VfUploadStatusDB.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a>\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u0002*\u00020\u00032!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u0002H\u00010\u0005\u00a2\u0006\u0002\u0010\t\u001a>\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u0002*\u00020\n2!\u0010\u0004\u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u0002H\u00010\u0005\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "using",
        "T",
        "",
        "Lcom/metamoji/sqldb/SqlPreparedStatement;",
        "proc",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "stmt",
        "(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Lcom/metamoji/sqldb/SqlResultSet;",
        "res",
        "(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/sqldb/SqlPreparedStatement;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->close()V

    throw p1
.end method

.method public static final using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/sqldb/SqlResultSet;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/sqldb/SqlResultSet;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->close()V

    throw p1
.end method
