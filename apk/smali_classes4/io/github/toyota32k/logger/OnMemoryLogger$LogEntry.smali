.class public final Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/logger/OnMemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;",
        "",
        "level",
        "",
        "tag",
        "",
        "msg",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "getLevel",
        "()I",
        "getTag",
        "()Ljava/lang/String;",
        "getMsg",
        "toString",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "Companion",
        "libLogger_release"
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
.field public static final Companion:Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;


# instance fields
.field private final level:I

.field private final msg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->Companion:Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    iput-object p2, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    iput-object p3, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->copy(ILjava/lang/String;Ljava/lang/String;)Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    iget v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    iget v3, p1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    iget-object v3, p1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    iget-object p1, p1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLevel()I
    .locals 1

    .line 65
    iget v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    return v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 79
    sget-object v0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->Companion:Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;

    iget v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->level:I

    invoke-virtual {v0, v1}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->tag:Ljava/lang/String;

    iget-object v2, p0, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->msg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
