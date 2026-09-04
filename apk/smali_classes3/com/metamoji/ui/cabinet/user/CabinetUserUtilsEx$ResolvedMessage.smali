.class public final Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
.super Ljava/lang/Object;
.source "CabinetUserUtilsEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolvedMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
        "",
        "message",
        "",
        "nextAction",
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getNextAction",
        "()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;",
        "doAction",
        "",
        "component1",
        "component2",
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
.field public static final Companion:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;


# instance fields
.field private final message:Ljava/lang/String;

.field private final nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->Companion:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)V
    .locals 1

    const-string v0, "nextAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    sget-object p2, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;->NONE:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILjava/lang/Object;)Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->copy(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    .locals 1

    const-string v0, "nextAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)V

    return-object v0
.end method

.method public final doAction()Z
    .locals 2

    .line 19
    sget-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->Companion:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;->doAction(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextAction()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->nextAction:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResolvedMessage(message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
