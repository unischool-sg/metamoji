.class public final Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
.super Ljava/lang/Object;
.source "VfUploadStatusDB.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;,
        Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;,
        Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u000f\u0018\u0000 32\u00020\u0001:\u0003123B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJB\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000eJ\u001c\u0010\u001c\u001a\u00020\t2\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u001f\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00180#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000e0%\u00a2\u0006\u0002\u0010&J\u001f\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00180#2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0%\u00a2\u0006\u0002\u0010)J\u0016\u0010*\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010+\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eJ!\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u00142\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020!0%\u00a2\u0006\u0002\u0010.J\u0008\u0010/\u001a\u00020\tH\u0002J\u000e\u00100\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u00064"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB;",
        "",
        "<init>",
        "()V",
        "database",
        "Lcom/metamoji/sqldb/SqlDatabase;",
        "getDatabase",
        "()Lcom/metamoji/sqldb/SqlDatabase;",
        "prepare",
        "",
        "dispose",
        "register",
        "",
        "ticket",
        "",
        "name",
        "ownerAccount",
        "serverId",
        "autoDel",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "date",
        "Ljava/util/Date;",
        "rec",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
        "getNextRecord",
        "getByTicket",
        "getStatusByTicket",
        "make_IN_statement",
        "sb",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "count",
        "",
        "getByTickets",
        "",
        "tickets",
        "",
        "([Ljava/lang/String;)Ljava/util/List;",
        "getByStatus",
        "ss",
        "([Ljava/lang/Integer;)Ljava/util/List;",
        "updateStatusByTicket",
        "updateServerIdByTicket",
        "changeStatus",
        "toStatus",
        "(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;[Ljava/lang/Integer;)I",
        "resetAbortedRecord",
        "removeByTicket",
        "Status",
        "Record",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

.field private static final DB_FILENAME:Ljava/lang/String; = ".vfmdb"

.field private static final FIELDS:Ljava/lang/String; = "ticket, path, owner, serverId, autoDel, status, date"

.field private static final SQL_INSERT:Ljava/lang/String; = "INSERT INTO table_uploading_status (ticket, path, owner, serverId, autoDel, status, date) VALUES(?,?,?,?, ?,?,?)"

.field private static final SS_ABORTED:[Ljava/lang/Integer;

.field private static final SS_LOCAL:[Ljava/lang/Integer;

.field private static final SS_NOT_DONE:[Ljava/lang/Integer;


# instance fields
.field private final database:Lcom/metamoji/sqldb/SqlDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    const/4 v0, 0x4

    .line 105
    new-array v0, v0, [Ljava/lang/Integer;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_NOT_DONE:[Ljava/lang/Integer;

    .line 106
    new-array v0, v4, [Ljava/lang/Integer;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_ABORTED:[Ljava/lang/Integer;

    .line 109
    new-array v0, v4, [Ljava/lang/Integer;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_LOCAL:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Lcom/metamoji/sqldb/SqlFactory;->instance()Lcom/metamoji/sqldb/SqlFactory;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getDatabasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sqldb/SqlFactory;->createDatabase(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    const-string v1, "createDatabase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->prepare()V

    return-void
.end method

.method public static final synthetic access$getSS_ABORTED$cp()[Ljava/lang/Integer;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_ABORTED:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$getSS_LOCAL$cp()[Ljava/lang/Integer;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_LOCAL:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$getSS_NOT_DONE$cp()[Ljava/lang/Integer;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_NOT_DONE:[Ljava/lang/Integer;

    return-object v0
.end method

.method static final changeStatus$lambda$8([Ljava/lang/Integer;Lcom/metamoji/sqldb/SqlPreparedStatement;)I
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static final getByStatus$lambda$5(Ljava/util/ArrayList;Lcom/metamoji/sqldb/SqlResultSet;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->fromDbResult(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final getByTicket$lambda$2(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->fromDbResult(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final getByTickets$lambda$4(Ljava/util/ArrayList;Lcom/metamoji/sqldb/SqlResultSet;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->fromDbResult(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final getNextRecord$lambda$1(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;->fromDbResult(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final getStatusByTicket$lambda$3(Lcom/metamoji/sqldb/SqlResultSet;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 2

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/metamoji/sqldb/SqlResultSet;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status$Companion;->fromInt(I)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INVALID:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object p0
.end method

.method private final make_IN_statement(Ljava/lang/StringBuilder;I)V
    .locals 2

    if-lez p2, :cond_1

    .line 220
    const-string v0, " (?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 222
    const-string v1, ",?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method static final register$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p5}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    if-nez p6, :cond_0

    new-instance p6, Ljava/util/Date;

    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    :cond_0
    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p7, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static final removeByTicket$lambda$9(Ljava/lang/String;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final resetAbortedRecord()V
    .locals 2

    .line 307
    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->SS_ABORTED:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->changeStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;[Ljava/lang/Integer;)I

    return-void
.end method

.method static final updateServerIdByTicket$lambda$7(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final updateStatusByTicket$lambda$6(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/lang/String;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final changeStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;[Ljava/lang/Integer;)I
    .locals 4

    const-string/jumbo v0, "toStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ss"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPDATE table_uploading_status SET status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " WHERE status IN "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, v1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->make_IN_statement(Ljava/lang/StringBuilder;I)V

    .line 301
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object p1

    const-string v0, "prepareStatement(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda7;-><init>([Ljava/lang/Integer;)V

    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final dispose()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->close()V

    .line 172
    sget-object v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->Companion:Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->terminate()V

    .line 173
    const-string v0, "VfUploadStatusDB.disposed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final getByStatus([Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ss"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    array-length v1, p1

    if-nez v1, :cond_0

    .line 254
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 257
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT ticket, path, owner, serverId, autoDel, status, date FROM table_uploading_status WHERE status IN "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v2, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->make_IN_statement(Ljava/lang/StringBuilder;I)V

    .line 259
    const-string v1, " ORDER BY date ASC"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string v1, "executeQuery(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 265
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "SELECT ticket, path, owner, serverId, autoDel, status, date FROM table_uploading_status WHERE ticket=?"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string v0, "executeQuery(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    return-object p1
.end method

.method public final getByTickets([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tickets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    array-length v1, p1

    if-nez v1, :cond_0

    .line 234
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT ticket, path, owner, serverId, autoDel, status, date FROM table_uploading_status WHERE ticket IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    array-length v2, p1

    invoke-direct {p0, v1, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->make_IN_statement(Ljava/lang/StringBuilder;I)V

    .line 239
    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string v1, "executeQuery(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 244
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getDatabase()Lcom/metamoji/sqldb/SqlDatabase;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    return-object v0
.end method

.method public final getNextRecord()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SELECT ticket, path, owner, serverId, autoDel, status, date FROM table_uploading_status WHERE status=? ORDER BY date ASC LIMIT ?"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object v0

    const-string v1, "executeQuery(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    return-object v0
.end method

.method public final getStatusByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "SELECT status FROM table_uploading_status WHERE ticket=?"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string v0, "executeQuery(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object p1
.end method

.method public final prepare()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->open()V

    .line 148
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->vacuum()V

    .line 150
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    .line 151
    const-string v1, "\n                    CREATE TABLE IF NOT EXISTS table_uploading_status (\n                    ticket      TEXT PRIMARY KEY,\n                    path        TEXT NOT NULL,\n                    owner       TEXT NOT NULL,\n                    serverId    TEXT,\n                    date        REAL NOT NULL DEFAULT CURRENT_TIMESTAMP,\n                    autoDel     BOOLEAN NOT NULL DEFAULT \'0\',\n                    status      INTEGER NOT NULL DEFAULT \'0\'\n                    )\n                    "

    .line 150
    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS idx_serverId ON table_uploading_status (serverId)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS idx_status   ON table_uploading_status (status)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->resetAbortedRecord()V

    .line 166
    sget-object v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->Companion:Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;->initialize(Lcom/metamoji/sqldb/SqlDatabase;)V

    .line 167
    const-string v0, "VfUploadStatusDB.prepared."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final register(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;)Z
    .locals 9

    const-string v0, "rec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getOwnerAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getAutoDel()Z

    move-result v6

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v7

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getDate()Ljava/util/Date;

    move-result-object v8

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public final register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Z
    .locals 9

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "INSERT INTO table_uploading_status (ticket, path, owner, serverId, autoDel, status, date) VALUES(?,?,?,?, ?,?,?)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final removeByTicket(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 326
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "DELETE FROM table_uploading_status WHERE ticket=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final updateServerIdByTicket(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serverId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "UPDATE table_uploading_status SET serverId=? WHERE ticket=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final updateStatusByTicket(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)Z
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->database:Lcom/metamoji/sqldb/SqlDatabase;

    const-string v1, "UPDATE table_uploading_status SET status=? WHERE ticket=?"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
