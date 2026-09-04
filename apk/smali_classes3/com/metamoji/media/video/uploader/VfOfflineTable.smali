.class public final Lcom/metamoji/media/video/uploader/VfOfflineTable;
.super Ljava/lang/Object;
.source "VfOfflineTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;,
        Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;,
        Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVfOfflineTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VfOfflineTable.kt\ncom/metamoji/media/video/uploader/VfOfflineTable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1#2:228\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J(\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\u001cj\u0008\u0012\u0004\u0012\u00020\u000e`\u001d2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000eH\u0002J \u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J>\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u000e0\u001cj\u0008\u0012\u0004\u0012\u00020\u000e`\u001d2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0016\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\u001cj\u0008\u0012\u0004\u0012\u00020\u000e`\u001dR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfOfflineTable;",
        "",
        "db",
        "Lcom/metamoji/sqldb/SqlDatabase;",
        "<init>",
        "(Lcom/metamoji/sqldb/SqlDatabase;)V",
        "_database",
        "Ljava/lang/ref/WeakReference;",
        "database",
        "getDatabase",
        "()Lcom/metamoji/sqldb/SqlDatabase;",
        "initializeTable",
        "",
        "FIELDS",
        "",
        "normalizeDriveId",
        "driveId",
        "SQL_REGISTER",
        "register",
        "",
        "documentId",
        "ticket",
        "status",
        "Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;",
        "SQL_CHECK_REGISTERED",
        "isTicketRegistered",
        "SQL_GET_TICKETS",
        "getRegisteredTicketsInDocument",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "SQL_UNREGISTER",
        "unregister",
        "updateTicketsInDocument",
        "newSet",
        "Companion",
        "Status",
        "Transaction",
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
.field public static final Companion:Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

.field private static instance:Lcom/metamoji/media/video/uploader/VfOfflineTable;


# instance fields
.field private final FIELDS:Ljava/lang/String;

.field private final SQL_CHECK_REGISTERED:Ljava/lang/String;

.field private final SQL_GET_TICKETS:Ljava/lang/String;

.field private final SQL_REGISTER:Ljava/lang/String;

.field private final SQL_UNREGISTER:Ljava/lang/String;

.field private final _database:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/sqldb/SqlDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->Companion:Lcom/metamoji/media/video/uploader/VfOfflineTable$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sqldb/SqlDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->_database:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-direct {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->initializeTable()V

    .line 53
    const-string p1, "driveId,documentId,ticket,status"

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->FIELDS:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO table_offline_manager ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") VALUES(?,?,?,?)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_REGISTER:Ljava/lang/String;

    .line 90
    const-string p1, "SELECT EXISTS (SELECT 1 FROM table_offline_manager where ticket=?)"

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_CHECK_REGISTERED:Ljava/lang/String;

    .line 106
    const-string p1, "SELECT ticket FROM table_offline_manager where driveId=? AND documentId=?"

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_GET_TICKETS:Ljava/lang/String;

    .line 126
    const-string p1, "DELETE FROM table_offline_manager WHERE driveId=? AND documentId=? AND ticket=?"

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_UNREGISTER:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/metamoji/media/video/uploader/VfOfflineTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->instance:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/metamoji/media/video/uploader/VfOfflineTable;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->instance:Lcom/metamoji/media/video/uploader/VfOfflineTable;

    return-void
.end method

.method private final getRegisteredTicketsInDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_GET_TICKETS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->normalizeDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string p2, "executeQuery(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;)V

    invoke-static {p1, p2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-object v0
.end method

.method static final getRegisteredTicketsInDocument$lambda$3(Ljava/util/HashSet;Lcom/metamoji/sqldb/SqlResultSet;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 116
    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final initializeTable()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    const-string v1, "CREATE TABLE IF NOT EXISTS table_offline_manager (\n    Id          INTEGER PRIMARY KEY,\n    driveId     TEXT NOT NULL,\n    documentId  TEXT NOT NULL,\n    ticket      TEXT NOT NULL,\n    status      INTEGER NOT NULL DEFAULT \'0\',\n    unique      (documentId,driveId,ticket)\n    )"

    .line 35
    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 45
    const-string v1, "CREATE INDEX IF NOT EXISTS idx_ticket ON table_offline_manager (ticket)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 46
    const-string v1, "CREATE INDEX IF NOT EXISTS idx_driveId ON table_offline_manager (status)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    .line 47
    const-string v1, "CREATE INDEX IF NOT EXISTS documentId ON table_offline_manager (status)"

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->executeUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private final isTicketRegistered(Ljava/lang/String;)Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_CHECK_REGISTERED:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/sqldb/SqlDatabase;->executeQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/metamoji/sqldb/SqlResultSet;

    move-result-object p1

    const-string v0, "executeQuery(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlResultSet;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method static final isTicketRegistered$lambda$1(Lcom/metamoji/sqldb/SqlResultSet;)Z
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface {p0}, Lcom/metamoji/sqldb/SqlResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    invoke-interface {p0, v0}, Lcom/metamoji/sqldb/SqlResultSet;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final normalizeDriveId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 64
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static synthetic register$default(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 76
    sget-object p4, Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;->DOWNLOADED:Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;)Z

    move-result p0

    return p0
.end method

.method static final register$lambda$0(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->normalizeDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;->getIntValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final unregister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_UNREGISTER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method static final unregister$lambda$4(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sqldb/SqlPreparedStatement;)Z
    .locals 1

    const-string/jumbo v0, "stmt"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->normalizeDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/metamoji/sqldb/SqlPreparedStatement;->executeUpdate([Ljava/lang/Object;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final updateTicketsInDocument$lambda$5(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;)Lkotlin/Unit;
    .locals 11

    const-string v0, "it"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-direct/range {p0 .. p2}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getRegisteredTicketsInDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v7

    .line 197
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-string v9, "iterator(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "/"

    const-string v4, " - "

    const-string v5, "next(...)"

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VfOfflineTable: register "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v0, p0

    .line 204
    invoke-static/range {v0 .. v6}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->register$default(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;ILjava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "VfOfflineTable: unregister "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1, p2, v7}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->unregister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    invoke-direct {p0, v7}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->isTicketRegistered(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 216
    invoke-virtual {p4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "VfOfflineTable: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " will be removed from StatusDB."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getDatabase()Lcom/metamoji/sqldb/SqlDatabase;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->_database:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sqldb/SqlDatabase;

    return-object v0
.end method

.method public final register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;)Z
    .locals 8

    const-string v0, "driveId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfOfflineTable;->SQL_REGISTER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->prepareStatement(Ljava/lang/String;)Lcom/metamoji/sqldb/SqlPreparedStatement;

    move-result-object v0

    const-string v1, "prepareStatement(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfOfflineTable$Status;)V

    invoke-static {v0, v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDBKt;->using(Lcom/metamoji/sqldb/SqlPreparedStatement;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final updateTicketsInDocument(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "driveId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newSet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/metamoji/media/video/uploader/VfOfflineTable;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v6

    .line 192
    :cond_0
    new-instance v7, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;

    invoke-direct {v7, v0}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;-><init>(Lcom/metamoji/sqldb/SqlDatabase;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/video/uploader/VfOfflineTable$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/media/video/uploader/VfOfflineTable;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v7, v1}, Lcom/metamoji/media/video/uploader/VfOfflineTable$Transaction;->using(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-object v6
.end method
