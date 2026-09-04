.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001dB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;",
        "",
        "serverId",
        "",
        "ticket",
        "action",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V",
        "getServerId",
        "()Ljava/lang/String;",
        "getTicket",
        "getAction",
        "()Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;",
        "forLocal",
        "",
        "getForLocal",
        "()Z",
        "forRemote",
        "getForRemote",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Action",
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
.field private final action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

.field private final serverId:Ljava/lang/String;

.field private final ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V
    .locals 1

    const-string/jumbo v0, "serverId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;ILjava/lang/Object;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;
    .locals 1

    const-string/jumbo v0, "serverId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    iget-object p1, p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAction()Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    return-object v0
.end method

.method public final getForLocal()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getForRemote()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->serverId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->ticket:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->action:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ItemAction(serverId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", ticket="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
