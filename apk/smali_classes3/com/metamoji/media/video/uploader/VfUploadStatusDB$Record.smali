.class public final Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
.super Ljava/lang/Object;
.source "VfUploadStatusDB.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploadStatusDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 32\u00020\u0001:\u00013BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\"\u001a\u00020#J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0008H\u00c6\u0003J\t\u0010+\u001a\u00020\nH\u00c6\u0003J\t\u0010,\u001a\u00020\u000cH\u00c6\u0003JQ\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010.\u001a\u00020\u00082\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u000201H\u00d6\u0001J\t\u00102\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0011\u0010$\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0017R\u0011\u0010%\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0017\u00a8\u00064"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
        "",
        "ticket",
        "",
        "name",
        "ownerAccount",
        "serverId",
        "autoDel",
        "",
        "status",
        "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "date",
        "Ljava/util/Date;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V",
        "getTicket",
        "()Ljava/lang/String;",
        "getName",
        "getOwnerAccount",
        "getServerId",
        "setServerId",
        "(Ljava/lang/String;)V",
        "getAutoDel",
        "()Z",
        "setAutoDel",
        "(Z)V",
        "getStatus",
        "()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
        "setStatus",
        "(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V",
        "getDate",
        "()Ljava/util/Date;",
        "setDate",
        "(Ljava/util/Date;)V",
        "getFile",
        "Ljava/io/File;",
        "isUplodableState",
        "isWaiting",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;


# instance fields
.field private autoDel:Z

.field private date:Ljava/util/Date;

.field private final name:Ljava/lang/String;

.field private final ownerAccount:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field private final ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    .line 59
    iput-boolean p5, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    .line 60
    iput-object p6, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    .line 61
    iput-object p7, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;ILjava/lang/Object;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-boolean p5, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    return v0
.end method

.method public final component6()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object v0
.end method

.method public final component7()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;
    .locals 9

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerAccount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Ljava/util/Date;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    iget-boolean v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iget-object v3, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAutoDel()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    return v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 3

    .line 64
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/video/VfVideoFileManager;->getAlbumStorageFolder()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnerAccount()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isUplodableState()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isWaiting()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setAutoDel(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    return-void
.end method

.method public final setDate(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    return-void
.end method

.method public final setServerId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ticket:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->ownerAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->serverId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->autoDel:Z

    iget-object v5, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iget-object v6, p0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->date:Ljava/util/Date;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Record(ticket="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", name="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoDel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
